// Function to validate skill form
function validateSkillForm(form) {
    const skillName = form.querySelector('input[name="skillName"]');
    const description = form.querySelector('textarea[name="description"]');
    let isValid = true;

    // Validate skill name
    if (!validateField(skillName, 'Skill name is required', (value) => value.trim() !== '' && value.length <= 50)) {
        isValid = false;
    }

    // Validate description
    if (!validateField(description, 'Description is required', (value) => value.trim() !== '' && value.length <= 500)) {
        isValid = false;
    }

    return isValid;
}

// Function to validate individual field
function validateField(field, errorMessage, validationFunction) {
    const errorElement = field.nextElementSibling;
    if (!validationFunction(field.value)) {
        displayError(field, errorMessage);
        return false;
    } else {
        clearError(field);
        field.classList.add('is-valid');
        return true;
    }
}

// Function to display error message
function displayError(input, message) {
    input.classList.remove('is-valid');
    input.classList.add('is-invalid');
    let errorElement = input.nextElementSibling;
    if (!errorElement || !errorElement.classList.contains('error-message')) {
        errorElement = document.createElement('div');
        errorElement.className = 'error-message';
        input.parentNode.insertBefore(errorElement, input.nextSibling);
    }
    errorElement.textContent = message;
}

// Function to clear error message
function clearError(input) {
    input.classList.remove('is-invalid');
    const errorElement = input.nextElementSibling;
    if (errorElement && errorElement.classList.contains('error-message')) {
        errorElement.remove();
    }
}

// Function to check for duplicate skill name
function checkDuplicateSkill(skillName) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: 'checkDuplicateSkill',
            type: 'POST',
            data: { skillName: skillName },
            success: function(response) {
                resolve(response.isDuplicate);
            },
            error: function() {
                console.error('Error checking duplicate skill');
                reject(new Error('Error checking duplicate skill'));
            }
        });
    });
}

// Add event listeners to forms
document.addEventListener('DOMContentLoaded', function() {
    const forms = document.querySelectorAll('#add-blog-form, .update-skill-form');

    forms.forEach(function(form) {
        const skillNameInput = form.querySelector('input[name="skillName"]');
        const descriptionInput = form.querySelector('textarea[name="description"]');

        // Add input event listeners for real-time validation
        skillNameInput.addEventListener('input', function() {
            validateField(this, 'Skill name is required', (value) => value.trim() !== '' && value.length <= 50);
        });

        skillNameInput.addEventListener('blur', function() {
            if (this.value.trim() !== '') {
                checkDuplicateSkill(this.value).then((isDuplicate) => {
                    if (isDuplicate) {
                        displayError(this, 'This skill name already exists');
                    } else {
                        clearError(this);
                        this.classList.add('is-valid');
                    }
                }).catch((error) => {
                    console.error('Error checking duplicate skill:', error);
                });
            }
        });

        descriptionInput.addEventListener('input', function() {
            validateField(this, 'Description is required', (value) => value.trim() !== '' && value.length <= 500);
        });

        // Form submission handler
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            if (validateSkillForm(this)) {
                const skillNameInput = this.querySelector('input[name="skillName"]');
                checkDuplicateSkill(skillNameInput.value).then((isDuplicate) => {
                    if (isDuplicate) {
                        displayError(skillNameInput, 'This skill name already exists');
                    } else {
                        // If validation passes and there's no duplicate, submit the form
                        this.submit();
                    }
                }).catch((error) => {
                    console.error('Error during form submission:', error);
                });
            }
        });
    });
});