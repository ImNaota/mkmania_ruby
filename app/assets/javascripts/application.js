// app/assets/javascripts/application.js

document.addEventListener('DOMContentLoaded', function() {
    var imageFooter = document.getElementById('imageFooter'); 
    imageFooter.addEventListener('click', function() {
      document.body.classList.toggle('gradient-background');
    });
  });