// Mở giỏ hàng khi nhấn vào biểu tượng giỏ hàng
document.querySelector(".icon-cart").addEventListener("click", () => {
    document.body.classList.add("showCart");
    document.querySelector(".cartTab").style.display = 'flex';  // Đảm bảo giỏ hàng hiển thị
});

// Đóng giỏ hàng khi nhấn nút đóng
document.querySelector(".close").addEventListener("click", () => {
    document.body.classList.remove("showCart");
    document.querySelector(".cartTab").style.display = 'none';  // Ẩn giỏ hàng khi nhấn đóng
});

// Lấy sản phẩm từ LocalStorage (giỏ hàng đã lưu)
function getCartItems() {
    const items = localStorage.getItem("cartItems");
    return items ? JSON.parse(items) : [];
}

// Lưu giỏ hàng vào LocalStorage
function saveCartItems(items) {
    localStorage.setItem("cartItems", JSON.stringify(items));
}

// Thêm sản phẩm vào giỏ hàng
document.querySelectorAll(".add-to-cartbtn").forEach(button => {
    button.addEventListener("click", (e) => {
        const productCard = e.target.closest(".card-block");

        const imgSrc = productCard.querySelector("img").src;
        const name = productCard.querySelector(".card-text").textContent.trim();
        const price = productCard.querySelector("span").textContent.trim();

        const product = { imgSrc, name, price, quantity: 1 };

        const cartItems = getCartItems();
        const existingProduct = cartItems.find(item => item.name === name);

        if (existingProduct) {
            existingProduct.quantity += 1;  // Tăng số lượng nếu sản phẩm đã có trong giỏ
        } else {
            cartItems.push(product);  // Thêm sản phẩm mới nếu chưa có
        }

        saveCartItems(cartItems);
        updateCart();
    });
});

// Cập nhật hiển thị giỏ hàng
function updateCart() {
    const cartContainer = document.querySelector(".sanPham");
    cartContainer.innerHTML = ""; // Xóa giỏ hàng cũ

    const cartItems = getCartItems();
    cartItems.forEach(item => {
        const productDiv = document.createElement("div");
        productDiv.className = "grid grid-cols-[7rem_auto_auto_auto] gap-4 items-center border-b border-gray-600 pb-4 mb-4";

        productDiv.innerHTML = `
            <div class="w-24 h-24 overflow-hidden">
                <img src="${item.imgSrc}" alt="${item.name}" class="w-full object-cover object-center"/>
            </div>
            <div>${item.name}</div>
            <div>${item.price}</div>
            <div class="flex items-center justify-center gap-2">
                <button class="w-8 h-8 flex items-center justify-center bg-gray-300 text-gray-800 rounded-full minus-btn">-</button>
                <span>${item.quantity}</span>
                <button class="w-8 h-8 flex items-center justify-center bg-gray-300 text-gray-800 rounded-full plus-btn">+</button>
            </div>
        `;

        // Cập nhật sự kiện cho nút "-" và "+"
        productDiv.querySelector(".minus-btn").addEventListener("click", () => updateQuantity(item.name, -1));
        productDiv.querySelector(".plus-btn").addEventListener("click", () => updateQuantity(item.name, 1));

        cartContainer.appendChild(productDiv);
    });
}

// Cập nhật số lượng sản phẩm trong giỏ hàng
function updateQuantity(productName, change) {
    const cartItems = getCartItems();
    const productIndex = cartItems.findIndex(item => item.name === productName);

    if (productIndex !== -1) {
        cartItems[productIndex].quantity += change;

        if (cartItems[productIndex].quantity <= 0) {
            cartItems.splice(productIndex, 1);  // Nếu số lượng bằng 0 thì xóa sản phẩm khỏi giỏ
        }
    }

    saveCartItems(cartItems);
    updateCart(); // Cập nhật lại giỏ hàng
}

// Cập nhật giỏ hàng khi tải trang
document.addEventListener('DOMContentLoaded', () => {
    updateCart();
});
