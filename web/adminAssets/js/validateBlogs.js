// Function to validate a single field
function validateField(input) {
  const name = input.name;
  const value = input.value.trim();

  switch(name) {
    case 'title':
      if (value.length < 5 || value.length > 100) {
        showError(input, 'Title must be between 5 and 100 characters');
      } else {
        removeError(input);
      }
      break;
    case 'descripition': // Note: This seems to be a typo in your original form. You might want to correct it to 'description'
      if (value.length < 10 || value.length > 5000) {
        showError(input, 'Description must be between 10 and 5000 characters');
      } else {
        removeError(input);
      }
      break;
    case 'image':
      if (input.files.length > 0) {
        const file = input.files[0];
        const fileType = file.type;
        const validImageTypes = ['image/jpeg', 'image/png', 'image/gif'];
        if (!validImageTypes.includes(fileType)) {
          showError(input, 'Please select a valid image file (JPEG, PNG, or GIF)');
        } else {
          removeError(input);
        }
      } else if (input.hasAttribute('required')) {
        showError(input, 'Please select an image');
      } else {
        removeError(input);
      }
      break;
  }
}

// Function to show error message
function showError(input, message) {
  removeError(input); // Remove any existing error first
  const formGroup = input.closest('.mb-3');
  const errorElement = document.createElement('div');
  errorElement.className = 'error-message text-danger mt-1';
  errorElement.textContent = message;
  formGroup.appendChild(errorElement);
  input.classList.add('is-invalid');
}

// Function to remove error message
function removeError(input) {
  const formGroup = input.closest('.mb-3');
  const errorElement = formGroup.querySelector('.error-message');
  if (errorElement) {
    errorElement.remove();
  }
  input.classList.remove('is-invalid');
}

// Function to validate the entire form
function validateForm(form) {
  let isValid = true;
  form.querySelectorAll('input, textarea').forEach(input => {
    validateField(input);
    if (input.classList.contains('is-invalid')) {
      isValid = false;
    }
  });
  return isValid;
}

// Add event listeners to forms and inputs
document.addEventListener('DOMContentLoaded', function() {
  const forms = document.querySelectorAll('#add-blog-form, [id^="update-blog-form"]');
    console.log(forms.length);
  forms.forEach(form => {      
    // Validate on form submission
    form.addEventListener('submit', function(event) {
      if (!validateForm(this)) {
        event.preventDefault();
      }
    });

    // Validate each field on blur
    form.querySelectorAll('input, textarea').forEach(input => {
      input.addEventListener('blur', function() {
                console.log(input);
        validateField(this);
      });

      // Remove error when user starts typing
      input.addEventListener('input', function() {
        removeError(this);
      });
    });
  });
});