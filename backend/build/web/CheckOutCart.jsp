<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Checkout</title>
        <!-- Library -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&family=Edu+AU+VIC+WA+NT+Arrows:wght@400..700&family=Playwrite+DE+Grund:wght@100..400&family=Edu+AU+VIC+WA+NT+Pre:wght@400..700&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap"
            rel="stylesheet"
            />
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Tailwind -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/CheckOutCart.css" />

        <style>
            #warning-box {
                position: fixed;
                top: 20px;
                left: 50%;
                transform: translateX(-50%);
                background-color: #ffcc00;
                color: #000;
                padding: 10px 20px;
                border-radius: 5px;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
                font-size: 16px;
                font-weight: bold;
                z-index: 1000;
                display: flex;
                align-items: center;
                justify-content: space-between;
                min-width: 300px;
                max-width: 80%;
            }

            #close-btn {
                cursor: pointer;
                margin-left: 10px;
                font-size: 20px;
                font-weight: bold;
            }

        </style>
    </head>
    <body>
        <div class="fixed bottom-4 right-4 flex flex-col items-center gap-2 z-10">
            <a
                href="https://zalo.me/0909157997"
                class="zalo-button flex items-center justify-center w-20 h-20 bg-transparent hover:scale-110 transition-transform duration-300"
                title="Chat Zalo"
                >
                <img src="assets/img/zalo-logo.png" alt="Zalo" class="w-20 h-20" />
            </a>
            <!-- Phone Button -->
            <a
                href="tel:0909157997"
                class="phone-button flex items-center justify-center w-12 h-12 bg-green-500 text-white rounded-full shadow-lg hover:scale-110 transition-transform duration-300"
                title="Call now"
                >
                <i class="fas fa-phone-alt text-3xl"></i>
            </a>
        </div>

        <!-- header -->
        <header id="Home" class="w-full h-16 bg-black">
            <div
                class="container mx-auto w-[75rem] h-full flex justify-between items-center"
                >
                <div class="font-bold text-white text-3xl textHeader_font">
                    <a href="./home-page.jsp">VN WATCH SHOP</a>
                </div>
                <div class="w-28 h-28">
                    <a href=""><img src="assets/img/Logo-Shop.jpg" alt="" /></a>
                </div>
                <div class="flex">
                    <a href="https://www.facebook.com/"
                       ><i class="fa-brands fa-facebook text-2xl text-white p-1 mx-2"></i
                        ></a>
                    <a href="https://www.instagram.com/"
                       ><i class="fa-brands fa-instagram text-2xl text-white p-1 mx-2"></i
                        ></a>
                    <a href="https://www.twitter.com/"
                       ><i class="fa-brands fa-twitter text-2xl text-white p-1 mx-2"></i
                        ></a>
                    <div class="text-white text-2xl mx-2">|</div>
                    <i
                        class="fa fa-cart-shopping text-2xl text-white p-1 cursor-pointer icon-cart"
                        ></i>
                    <div class="text-white text-2xl mx-2">|</div>
                    <% String username = (String) session.getAttribute("username");
                        if (username == null || username.isEmpty()) {
                    %>
                    <a href="./account.jsp" class="text-white text-3xl ml-2 text-end">Login</a>
                    <% } else {%>
                    <a class="text-white text-3xl ml-2 text-end"><%= username%></a> 
                    <% }%>
                </div>
            </div>
        </header>

        <!-- nav -->
        <div class="navigation sticky top-0 w-full h-16 bg-white z-10">
            <div class="container mx-auto w-[75rem] h-full">
                <ul class="flex w-full justify-between h-full items-center">
                    <li>
                        <a
                            href="./home-page.jsp#home"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Home</a
                        >
                    </li>
                    <li>
                        <a
                            href="./MainController?action=productList"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Products</a
                        >
                    </li>
                    <li>
                        <a
                            href="./home-page.html#events"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Events</a
                        >
                    </li>
                    <li>
                        <a
                            href="./home-page.jsp#Bestsellers"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Best Sellers</a
                        >
                    </li>
                    <li>
                        <a
                            href="./home-page.jsp#about-us"
                            class="nav-link relative text-black text-2xl nav_font"
                            >About us</a
                        >
                    </li>
                    <li>
                        <a
                            href="./home-page.jsp#contact"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Contact us</a
                        >
                    </li>
                </ul>
            </div>
        </div>

        <!--  -->
        <%
            String warning = (String) request.getAttribute("warning");
            if (warning != null) {
        %>
        <div id="warning-box">
            <%= warning%>
            <span id="close-btn" onclick="closeWarning()">×</span>
        </div>
        <script>
            function closeWarning() {
                document.getElementById("warning-box").style.display = "none";
            }
        </script>
        <% }%>
        <div class="w-screen h-auto bg-gray-200 py-3">
            <div class="p-6 max-w-3xl mx-auto bg-white rounded-lg shadow-lg">
                <div class="flex justify-between items-center mb-4">
                    <a
                        href="./MainController?action=productList"
                        class="text-blue-500 text-sm hover:underline"
                        >
                        &lt; Buy More
                    </a>
                    <h2 class="text-lg font-bold">YOUR CART</h2>
                </div>

                <div class="sanPhamCheckout">

                </div>


                <div class="tinhTongTien">

                </div>

                <!-- info -->
                <form action="./MainController?action=placeOrder"  method="POST">
                    <div class="space-y-4">
                        <div class="flex items-center space-x-4">
                            <label class="flex items-center space-x-2">
                                <input
                                    type="radio"
                                    name="gender"
                                    value="Male"
                                    class="text-blue-500 focus:ring"
                                    />
                                <span>Male</span>
                            </label>
                            <label class="flex items-center space-x-2">
                                <input
                                    type="radio"
                                    name="gender"
                                    value="Female"
                                    class="text-blue-500 focus:ring"
                                    />
                                <span>Female</span>
                            </label>
                            <label class="flex items-center space-x-2">
                                <input
                                    type="radio"
                                    name="gender"
                                    value="other"
                                    class="text-blue-500 focus:ring"
                                    />
                                <span>Other</span>
                            </label>
                        </div>
                        <div class="grid grid-cols-2 gap-4">
                            <input
                                type="text"
                                placeholder="FullName"
                                class="w-full p-2 border rounded focus:ring"
                                name="fullName"
                                requrired
                                />
                            <input
                                type="text"
                                placeholder="PhoneNumber"
                                class="w-full p-2 border rounded focus:ring"
                                name="phoneNumber"
                                requrired
                                />
                            <input
                                type="text"
                                placeholder="Address"
                                class="w-full p-2 border rounded focus:ring"
                                name="address"
                                requrired
                                />
                            <input
                                type="text"
                                placeholder="Note"
                                class="w-full p-2 border rounded focus:ring"
                                />
                        </div>

                        <div class="w-full">
                            <h2 class="text-lg font-semibold mb-2">Payment Methods</h2>
                            <div class="flex justify-around items-center">
                                <label class="flex items-center">
                                    <input
                                        type="radio"
                                        name="payment_method"
                                        value="cod"
                                        class="w-4 h-4 text-blue-600 border-gray-300 focus:ring-blue-500"
                                        required
                                        />
                                    <span class="ml-2 text-gray-800">Cash on Delivery (COD)</span>
                                </label>
                                <label class="flex items-center">
                                    <input
                                        type="radio"
                                        name="payment_method"
                                        value="Online-Payment"
                                        class="w-4 h-4 text-blue-600 border-gray-300 focus:ring-blue-500"
                                        />
                                    <span class="ml-2 text-gray-800">Online Payment</span>
                                </label>
                            </div>
                        </div>
                        <button
                            class="w-full bg-[var(--color-yellow)] text-black py-3 rounded hover:bg-yellow-600 focus:outline-none focus:ring"
                            >
                            Place Order
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>   
    <script src="./js/app-CheckOutCard.js"></script>
</body>
</html>
