// Function to validate a single input field
function validateField(field) {
    const value = field.value.trim();
    const fieldName = field.name;
    let errorMessage = '';

    switch (fieldName) {
        case 'skillName':
            if (value.length === 0) {
                errorMessage = 'Skill Name is required.';
            } else if (value.length > 100) {
                errorMessage = 'Skill Name must be 100 characters or less.';
            }
            break;        
        case 'description':
            if (value.length === 0) {
                errorMessage = 'Description is required.';
            } else if (value.length > 500) {
                errorMessage = 'Description must be 500 characters or less.';
            }
            break;
    }

    // Display error message
    const errorSpan = field.nextElementSibling;
    if (errorMessage) {
        if (!errorSpan || !errorSpan.classList.contains('error-message')) {
            const span = document.createElement('span');
            span.className = 'error-message text-danger';
            field.parentNode.insertBefore(span, field.nextSibling);
        }
        errorSpan.textContent = errorMessage;
        field.classList.add('is-invalid');
    } else {
        if (errorSpan && errorSpan.classList.contains('error-message')) {
            errorSpan.remove();
        }
        field.classList.remove('is-invalid');
        field.classList.add('is-valid');
    }

    return !errorMessage;
}

// Function to validate entire form
function validateForm(formId) {
    const form = document.getElementById(formId);
    const fields = form.querySelectorAll('input[name="skillName"], textarea[name="description"]');
    let isValid = true;

    fields.forEach(field => {
        if (!validateField(field)) {
            isValid = false;
        }
    });

    return isValid;
}

// Add event listeners to forms and fields
document.addEventListener('DOMContentLoaded', function() {
    const forms = document.querySelectorAll('#add-blog-form, [id^="update-blog-form-"]');

    forms.forEach(form => {
        const fields = form.querySelectorAll('input[name="skillName"], textarea[name="description"]');

        fields.forEach(field => {
            field.addEventListener('blur', function() {
                validateField(this);
            });
           
        });

        form.addEventListener('submit', function(event) {
            if (!validateForm(this.id)) {
                event.preventDefault();
            }
        });
    });
});