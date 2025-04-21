let iconCart = document.querySelector(".icon-cart");
let body = document.querySelector("body");
let closeCart = document.querySelector(".close");

iconCart.addEventListener("click", () => {
  body.classList.add("showCart");
});

document.addEventListener("DOMContentLoaded", () => {
    let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
    const cartContainer = document.querySelector(".sanPhamCheckout");
    const subtotalElement = document.querySelector(".tinhTongTien"); 

    if (cartItems.length === 0) {
        cartContainer.innerHTML = "<p>Your cart is empty.</p>";
        subtotalElement.innerHTML = "<div class='flex justify-between items-center mb-6'><span class='text-gray-600'>Subtotal:</span><span class='text-red-600 font-bold text-lg'>$0.00</span></div>";
    } else {
        let subtotal = 0;

        const updateSubtotal = () => {
            subtotal = cartItems.reduce((acc, item) => acc + parseFloat(item.price.replace('$', '')) * item.quantity, 0);
            subtotalElement.innerHTML = `
                <div class='flex justify-between items-center mb-6'>
                    <span class='text-gray-600'>Subtotal:</span>
                    <span class='text-red-600 font-bold text-lg'>$${subtotal.toFixed(2)}</span>
                </div>
            `;
        };

        cartItems.forEach((item, index) => {
            const cartItem = document.createElement("div");
            cartItem.className = "cart-item flex items-swrap border-b mb-1 pr-2 even:bg-gray-300";
            cartItem.innerHTML = `
                <img
                    src="${item.imgSrc}"
                    alt=""
                    class="w-16 h-16 rounded object-cover"
                    />
                <div class="flex-1 ml-4">
                    <h3 class="text-sm font-semibold">${item.name}</h3>
                    <div class="flex items-center mt-2">
                        <span class="text-red-600 font-bold text-lg">${item.price}</span>
                    </div>
                </div>
                <div class="flex items-center space-x-2">
                    <button
                        class="w-8 h-8 flex justify-center items-center text-gray-500 border rounded hover:bg-gray-100 minus-btn"
                        >
                        -
                    </button>
                    <span class="w-8 text-center quantity">${item.quantity}</span>
                    <button
                        class="w-8 h-8 flex justify-center items-center text-gray-500 border rounded hover:bg-gray-100 plus-btn"
                        >
                        +
                    </button>
                    <button class="ml-4 text-gray-400 hover:text-red-600 delete-btn">X</button>
                </div>
            `;

            const minusButton = cartItem.querySelector(".minus-btn");
            minusButton.addEventListener("click", () => {
                if (cartItems[index].quantity > 1) {
                    cartItems[index].quantity--;
                    cartItem.querySelector(".quantity").textContent = cartItems[index].quantity;
                    localStorage.setItem("cartItems", JSON.stringify(cartItems));
                    updateSubtotal();
                }
            });

            const plusButton = cartItem.querySelector(".plus-btn");
            plusButton.addEventListener("click", () => {
                cartItems[index].quantity++;
                cartItem.querySelector(".quantity").textContent = cartItems[index].quantity;
                localStorage.setItem("cartItems", JSON.stringify(cartItems));
                updateSubtotal();
            });

            const deleteButton = cartItem.querySelector(".delete-btn");
            deleteButton.addEventListener("click", () => {
                cartItems.splice(index, 1);
                localStorage.setItem("cartItems", JSON.stringify(cartItems));
                cartContainer.removeChild(cartItem);

                if (cartItems.length === 0) {
                    cartContainer.innerHTML = "<p>Your cart is empty.</p>";
                    subtotalElement.innerHTML = "<div class='flex justify-between items-center mb-6'><span class='text-gray-600'>Subtotal:</span><span class='text-red-600 font-bold text-lg'>$0.00</span></div>";
                } else {
                    updateSubtotal();
                }
            });

            cartContainer.appendChild(cartItem);
        });

        updateSubtotal();
    }
});



