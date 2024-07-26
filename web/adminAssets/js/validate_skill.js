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
function checkDuplicateSkill(skillName, skillId = null) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: 'checkDuplicateSkill',
            type: 'POST',
            data: { skillName: skillName, skillId: skillId },
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
    const addForm = document.getElementById('add-blog-form');
    const updateForms = document.querySelectorAll('.update-skill-form');

    function setupFormValidation(form) {
        const skillNameInput = form.querySelector('input[name="skillName"]');
        const descriptionInput = form.querySelector('textarea[name="description"]');
        const skillId = form.querySelector('input[name="skillId"]')?.value;

        // Add input event listeners for real-time validation
        skillNameInput.addEventListener('input', function() {
            validateField(this, 'Skill name is required', (value) => value.trim() !== '' && value.length <= 50);
        });

        skillNameInput.addEventListener('blur', function() {
            if (this.value.trim() !== '') {
                checkDuplicateSkill(this.value, skillId).then((isDuplicate) => {
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
                checkDuplicateSkill(skillNameInput.value, skillId).then((isDuplicate) => {
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
    }

    // Setup validation for add form
    if (addForm) {
        setupFormValidation(addForm);
    }

    // Setup validation for update forms
    updateForms.forEach(setupFormValidation);
});