// notification.js
function showSuccessNotification(message) {
    Swal.fire({
        icon: 'success',
        title: 'Notification',
        text: message,
        confirmButtonText: 'OK'
    });
}