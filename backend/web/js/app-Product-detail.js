document.addEventListener("DOMContentLoaded", function () {
    // Select elements
    const cartIcon = document.querySelector('.icon-cart');
    const closeButton = document.querySelector('.close');
    const body = document.body;

    // Open the cart
    cartIcon.addEventListener('click', function () {
        body.classList.add('showCart'); // Add class to show cart
        setTimeout(function () {
            body.classList.add('cartVisible'); // Ensure cart transition happens smoothly
        }, 10);
    });

    // Close the cart
    closeButton.addEventListener('click', function () {
        body.classList.remove('cartVisible'); // Hide cart
        setTimeout(function () {
            body.classList.remove('showCart'); // Remove showCart class after animation
        }, 500); // Wait for the animation to finish
    });
});
