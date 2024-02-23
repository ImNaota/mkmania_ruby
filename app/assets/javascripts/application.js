// app/assets/javascripts/application.js

document.addEventListener('DOMContentLoaded', function() {
    var imageFooter = document.getElementById('imageFooter'); // Assurez-vous d'avoir un ID approprié pour votre image
    imageFooter.addEventListener('click', function() {
      document.body.classList.toggle('gradient-background');
    });
  });