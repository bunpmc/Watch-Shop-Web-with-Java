<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home</title>
        <!-- Library -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&family=Edu+AU+VIC+WA+NT+Arrows:wght@400.700&family=Playwrite+DE+Grund:wght@100.400&family=Edu+AU+VIC+WA+NT+Pre:wght@400.700&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap"
            rel="stylesheet"
            />

        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
            rel="stylesheet"
            />

        <!-- splide -->
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css"
            integrity="sha256-5uKiXEwbaQh9cgd2/5Vp6WmMnsUr3VZZw0a8rKnOKNU="
            crossorigin="anonymous"
            />
        <!-- Tailwind -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="./assets/css/style.css" />
        <link rel="stylesheet" href="./assets/css/home-page.css" />
    </head>
    <body>
        <!-- Code -->
        <div
            class="fixed right-0 top-0 w-[25rem] bg-white text-black h-full transform translate-x-full transition-transform duration-500 z-20 cartTab"
            >
            <!-- Cart -->
            <div class="p-4 border-b border-gray-600 h-[4rem] bg-black]">
                <h1
                    class="text-lg font-semibold text-black text-center textHeader_font"
                    >
                    SHOPPING CART
                </h1>
            </div>

            <!-- -->
            <div class="sanPham overflow-auto p-4 h-[calc(100%-7rem)]">


            </div>

            <!-- -->
            <div class="p-4 pt-0 grid grid-cols-2 gap-4">
                <button class="bg-gray-700 px-4 py-2 rounded hover:bg-gray-600 close">
                    CLOSE
                </button>
                <a href="./CheckOutCart.jsp"
                   class="bg-yellow-500 text-gray-800 px-4 py-2 rounded hover:bg-yellow-400 text-center"
                   >
                    CHECKOUT
                </a>
            </div>
        </div>

        <div class="fixed bottom-4 right-4 flex flex-col items-center gap-2 z-10">
            <!-- Zalo Button -->
            <a
                href="https://zalo.me/0909157997"
                class="zalo-button flex items-center justify-center w-20 h-20 bg-transparent hover:scale-110 transition-transform duration-300"
                title="Chat Zalo"
                >
                <img src="./assets/img/zalo-logo.png" alt="Zalo" class="w-20 h-20" />
            </a>
            <!-- Phone Button -->
            <a
                href="tel:0909157997"
                class="phone-button flex items-center justify-center w-12 h-12 bg-green-500 text-white rounded-full shadow-lg hover:scale-110 transition-transform duration-300"
                title="Call Now"
                >
                <i class="fas fa-phone-alt text-3xl"></i>
            </a>
        </div>

        <!-- header -->
        <header id="Home" class="w-full h-16 bg-black">
            <div class="container mx-auto w-[75rem] h-full grid grid-cols-3 z-50">
                <div
                    class="font-bold text-white text-3xl textHeader_font flex justify-start items-center"
                    >
                    <a href="">VN WATCH SHOP</a>
                </div>
                <div class="w-full h-full flex justify-center items-center">
                    <a class="w-16 h-16" href=""
                       ><img src="./assets/img/Logo-Shop.jpg" alt=""
                          /></a>
                </div>
                <div class="flex justify-end items-center">
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
                            href="#Home"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Home</a
                        >
                    </li>
                    <li>
                        <a
                            href="MainController?action=productList"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Products</a
                        >
                    </li>
                    <li>
                        <a
                            href="#events"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Events</a
                        >
                    </li>
                    <li>
                        <a
                            href="#Bestsellers"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Best Sellers</a
                        >
                    </li>
                    <li>
                        <a
                            href="#about-us"
                            class="nav-link relative text-black text-2xl nav_font"
                            >About us</a
                        >
                    </li>
                    <li>
                        <a
                            href="#contact"
                            class="nav-link relative text-black text-2xl nav_font"
                            >Contact us</a
                        >
                    </li>
                </ul>
            </div>
        </div>
        <!-- big banner -->
        <div class="relative background w-full h-screen"></div>

        <div class="absolute overflow-hidden top-[25rem] h-40 w-full">
            <p
                class="whitespace-nowrap text-6xl font-bold text-white ml-[4.5rem] mb-3 textHeader_font"
                >
                We have the best <span class="typing-text"></span>
                <span class="border-r-2 border-gray-800 animate-pulse"></span>
            </p>
        </div>
        <!-- about us  -->
        <div
            id="about-us"
            class="container mx-auto w-[75rem] h-[27.75rem] my-[5rem] flex items-center justify-between"
            >
            <div class="w-[60%] h-full">
                <div
                    class="bg-gray-900 p-[1.13rem] shadow-xl text-justify m-0 rounded-tl-lg rounded-bl-lg"
                    >
                    <h1 class="text-3xl font-bold mb-4 text-yellow-400 textHeader_font">
                        Welcome to VN WATCH SHOP
                    </h1>
                    <p class="text-lg text-gray-300 font-semibold mb-4">
                        VN WATCH SHOP is your trusted destination for luxury and timeless
                        watches. With over 10 years of experience in the industry, we are
                        proud to offer a wide range of high-quality, authentic timepieces
                        sourced from the most prestigious brands around the world.
                    </p>
                    <p class="text-lg text-gray-300 font-semibold mb-4">
                        Our mission is to help you find the perfect accessory that not only
                        complements your style but also stands as a testament to your
                        achievements and aspirations.
                    </p>
                    <p class="text-lg text-gray-300 font-semibold mb-4">
                        At VN WATCH SHOP, customer satisfaction is at the heart of
                        everything we do. We are dedicated to providing exceptional service,
                        ensuring a seamless shopping experience and lasting trust with every
                        purchase.
                    </p>
                    <p class="text-lg text-gray-300 font-semibold">
                        Thank you for choosing VN WATCH SHOP to be a part of your journey.
                        Together, let's celebrate every second with sophistication and
                        grace!
                    </p>
                </div>
            </div>
            <div class="w-[40%] h-full">
                <img
                    src="./assets/img/about-us.jpg"
                    alt="Ms. Hang's Jelly Dessert Logo"
                    class="w-full h-full object-cover rounded-tr-lg rounded-br-lg"
                    />
            </div>
        </div>

        <!-- event slice -->

        <div
            id="events"
            class="textHeader_font container mx-auto w-[75rem] h-[23rem] mt-17 mb-20"
            >
            <div class="text-3xl font-bold text-start mb-3 h-[3rem]">EVENTS</div>
            <section
                id="splice_events"
                class="splide w-full h-[20rem]"
                aria-label="Splide Basic HTML Example"
                >
                <div class="splide__track w-full h-[20rem]">
                    <ul class="splide__list w-full h-[20rem]">
                        <li class="splide__slide w-full h-[20rem]">
                            <div class="w-full h-full overflow-hidden">
                                <img
                                    src="./assets/img/Slice-event-1.jpg"
                                    alt=""
                                    class="w-full h-full object-cover"
                                    />
                            </div>
                        </li>
                        <li class="splide__slide">
                            <div class="w-full h-full overflow-hidden">
                                <img
                                    src="./assets/img/slice-event-3.jpg"
                                    alt=""
                                    class="w-full h-full object-cover"
                                    />
                            </div>
                        </li>
                        <li class="splide__slide">
                            <div class="w-full h-full overflow-hidden">
                                <img
                                    src="./assets/img/slice-event-3.jpg"
                                    alt=""
                                    class="w-full h-full object-cover"
                                    />
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <!-- Hot sale -->
        <div
            id="Bestsellers"
            class="textHeader_font container mx-auto w-[75rem] h-[32rem] mt-17 mb-12"
            >
            <div class="text-3xl font-bold text-start mb-3 h-[3rem]">
                BEST SELLERS
            </div>
            <section
                id="splice_bestsellers"
                class="splide w-full h-[28rem]"
                aria-label="Splide Basic HTML Example"
                >
                <div class="splide__track w-full h-[28rem]">
                    <ul class="splide__list w-full h-[28rem]">
                        <li class="splide__slide w-full h-[28rem]">
                            <!-- item 4 -->
                            <div
                                class="card-block w-[90%] h-full bg-black hover:shadow-2xl transform hover:translate-y-[-0.25rem] transition-all duration-300 ease-in-out rounded-lg"
                                >
                                <div class="card-img h-[80%] w-full overflow-hidden rounded-lg">
                                    <img
                                        src="./assets/img/rolex-1.jpg"
                                        alt=""
                                        class="w-full h-full object-cover transform transition-transform duration-300 ease-in-out hover:scale-110"
                                        />
                                </div>
                                <div
                                    class="content-card-item h-[20%] flex flex-col justify-around items-center p-2"
                                    >
                                    <div
                                        class="card-text text-2xl font-bold text-white text-start textHeader_font w-full"
                                        >
                                        Rolex 1
                                    </div>
                                    <div class="flex justify-between items-center pt-0 w-full">
                                        <span class="text-2xl font-bold text-white">$1995</span>
                                        <button
                                            class="add-to-cartbtn h-10 flex items-center justify-center text-xl font-bold text-white bg-transparent relative rounded-lg outline-none border-2 border-yellow-950 p-2"
                                            >
                                            Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="splide__slide">
                            <!-- item 4 -->
                            <div
                                class="card-block w-[90%] h-full bg-black hover:shadow-2xl transform hover:translate-y-[-0.25rem] transition-all duration-300 ease-in-out rounded-lg"
                                >
                                <div class="card-img h-[80%] w-full overflow-hidden rounded-lg">
                                    <img
                                        src="./assets/img/rolex-2.jpg"
                                        alt=""
                                        class="w-full h-full object-cover transform transition-transform duration-300 ease-in-out hover:scale-110"
                                        />
                                </div>
                                <div
                                    class="content-card-item h-[20%] flex flex-col justify-around items-center p-2"
                                    >
                                    <div
                                        class="card-text text-2xl font-bold text-white text-start textHeader_font w-full"
                                        >
                                        Rolex 2
                                    </div>
                                    <div class="flex justify-between items-center w-full pt-0">
                                        <span class="text-2xl font-bold text-white">$3895</span>
                                        <button
                                            class="add-to-cartbtn h-10 flex items-center justify-center text-xl font-bold text-white bg-transparent relative rounded-lg outline-none border-2 border-yellow-950 p-2"
                                            >
                                            Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="splide__slide">
                            <!-- item 4 -->
                            <div
                                class="card-block w-[90%] h-full bg-black hover:shadow-2xl transform hover:translate-y-[-0.25rem] transition-all duration-300 ease-in-out rounded-lg"
                                >
                                <div class="card-img h-[80%] w-full overflow-hidden rounded-lg">
                                    <img
                                        src="./assets/img/rolex-3.jpg"
                                        alt=""
                                        class="w-full h-full object-cover transform transition-transform duration-300 ease-in-out hover:scale-110"
                                        />
                                </div>
                                <div
                                    class="content-card-item h-[20%] flex flex-col justify-around items-center p-2"
                                    >
                                    <div
                                        class="card-text text-2xl font-bold text-white w-full text-start textHeader_font"
                                        >
                                        Rolex 3
                                    </div>
                                    <div class="flex justify-between items-center pt-0 w-full">
                                        <span class="text-2xl font-bold text-white">$1895</span>
                                        <button
                                            class="add-to-cartbtn h-10 flex items-center justify-center text-xl font-bold text-white bg-transparent relative rounded-lg outline-none border-2 border-yellow-950 p-2"
                                            >
                                            Add to Cart
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <!-- footer -->
        <footer class="footer w-full bg-black text-white py-8">
            <div class="container mx-auto w-[75rem]">
                <!-- Google Maps -->
                <div
                    class="map-container w-full h-[15rem] overflow-hidden rounded-lg shadow-lg mb-8"
                    >
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6100105370133!2d106.80730807414236!3d10.841127589311572!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2sFPT%20University%20HCMC!5e0!3m2!1sen!2s!4v1732972483396!5m2!1sen!2s"
                        allowfullscreen=""
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"
                        class="w-full h-full border-0"
                        ></iframe>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <div>
                        <h3 class="text-xl font-bold mb-4 textHeader_font">
                            Store Information
                        </h3>
                        <p class="mb-2">Ms. Hang's Jelly Cake</p>
                        <p class="mb-2">
                            Address: 1st Floor, Building A, FPT University, District 9, HCMC
                        </p>
                        <p class="mb-2">Phone: +84 0909157997</p>
                        <p class="mb-2">Email: Hangjellycake@gmail.vn</p>
                    </div>

                    <div>
                        <h3 class="text-xl font-bold mb-4 textHeader_font">Policies</h3>
                        <ul>
                            <li>
                                <a href="#" class="hover:text-[var(--color-yellow)]"
                                   >Privacy Policy</a
                                >
                            </li>
                            <li>
                                <a href="#" class="hover:text-[var(--color-yellow)]"
                                   >Return & Refund Policy</a
                                >
                            </li>
                            <li>
                                <a href="#" class="hover:text-[var(--color-yellow)]"
                                   >Terms of Service</a
                                >
                            </li>
                        </ul>
                    </div>

                    <div id="contact">
                        <h3 class="text-xl font-bold mb-4 textHeader_font">
                            Connect With Us
                        </h3>
                        <ul>
                            <li>
                                <a
                                    href="https://www.facebook.com/banhraucaucohang"
                                    class="hover:text-[var(--color-yellow)]"
                                    >Facebook</a
                                >
                            </li>
                            <li>
                                <a
                                    href="https://twitter.com/"
                                    class="hover:text-[var(--color-yellow)]"
                                    >Twitter</a
                                >
                            </li>
                            <li>
                                <a
                                    href="https://www.instagram.com/"
                                    class="hover:text-[var(--color-yellow)]"
                                    >Instagram</a
                                >
                            </li>
                            <li>
                                <a
                                    href="https://www.linkedin.com/"
                                    class="hover:text-[var(--color-yellow)]"
                                    >LinkedIn</a
                                >
                            </li>
                            <li>
                                <a
                                    href="https://zalo.me/0909157997"
                                    class="hover:text-[var(--color-yellow)]"
                                    >Zalo</a
                                >
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="text-center mt-8 border-t border-gray-600 pt-4">
                    <p>&copy; Nhom 4 nguoi. All Rights Reserved.</p>
                </div>
            </div>
        </footer>

        <!--  -->
        <script
            src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"
            integrity="sha256-FZsW7H2V5X9TGinSjjwYJ419Xka27I8XPDmWryGlWtw="
            crossorigin="anonymous"
        ></script>
        <script src="./js/app-Home.js"></script>
    </body>
</html>
