<%@page import="models.users.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.products.ProductDTO"%>
<%@page import="models.products.ProductDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Product</title>
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
        <link rel="stylesheet" href="./assets/css/style.css" />
        <link rel="stylesheet" href="./assets/css/products.css" />
    </head>
    <body class="bg-gray-100">
        <!--shopping cart-->
        <div
            class="fixed right-0 top-0 w-[25rem] bg-white text-black h-full transform translate-x-full transition-transform duration-500 z-20 cartTab flex flex-col"
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
                            href="./home-page.jsp#events"
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

        <div class="container mx-auto w-[75rem] h-auto mt-8 bg-gradient-to-r from-blue-100 to-white rounded-lg shadow-xl p-8">
            <!-- Header -->
            <div class="text-center text-4xl font-extrabold text-gray-900 mb-6">
                Products
            </div>

            <!-- Search Section: Always visible -->
            <div class="mb-6">
                <form method="GET" action="MainController" class="flex items-center space-x-4 rounded-lg shadow-md p-4 bg-white">
                    <input name="action" value="productList" type="hidden">
                    <input
                        name="keyword"
                        type="text"
                        placeholder="Search products..."
                        value="<%=request.getParameter("keyword") != null ? request.getParameter("keyword") : ""%>"
                        class="w-full border border-gray-300 rounded-lg p-2 focus:ring-2 focus:ring-blue-500 focus:outline-none"
                        />
                    <button
                        type="submit"
                        class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition duration-200"
                        >
                        Search
                    </button>
                </form>
            </div>

            <!-- Toggle Filters Button -->
            <div class="flex justify-end mb-4">
                <button
                    type="button"
                    id="toggleFiltersBtn"
                    class="flex items-center justify-center w-12 h-12 bg-gradient-to-r from-blue-500 to-blue-700 text-white rounded-full shadow-lg hover:from-blue-600 hover:to-blue-800 focus:outline-none focus:ring-2 focus:ring-blue-400 transition-all duration-300"
                    >
                    <svg id="iconArrow" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
            </div>

            <!-- Filter Section: Hidden by default -->
            <div id="filterSection" class="hidden">
                <!-- Sort Form -->
                <form method="GET" action="MainController" class="mb-6 space-y-4 bg-white p-6 rounded-lg shadow-md">
                    <input name="action" value="sortProduct" type="hidden">
                    <div>
                        <label class="block text-lg font-medium text-gray-700 mb-2">Sort By:</label>
                        <div class="flex flex-wrap gap-4">
                            <label class="flex items-center space-x-1">
                                <input type="radio" name="sort" value="price-asc" class="mr-1" />
                                <span>Price: Low to High</span>
                            </label>
                            <label class="flex items-center space-x-1">
                                <input type="radio" name="sort" value="price-desc" class="mr-1" />
                                <span>Price: High to Low</span>
                            </label>
                            <label class="flex items-center space-x-1">
                                <input type="radio" name="sort" value="name-asc" class="mr-1" />
                                <span>Name: A to Z</span>
                            </label>
                            <label class="flex items-center space-x-1">
                                <input type="radio" name="sort" value="name-desc" class="mr-1" />
                                <span>Name: Z to A</span>
                            </label>
                            <label class="flex items-center space-x-1">
                                <input type="radio" name="sort" value="" class="mr-1" />
                                <span>All</span>
                            </label>
                        </div>
                    </div>

                    <!-- Category Section -->
                    <div>
                        <label class="block text-lg font-medium text-gray-700 mb-2">Category:</label>
                        <select
                            name="category"
                            class="border border-gray-300 rounded-lg p-2 w-full focus:ring-2 focus:ring-blue-500 focus:outline-none"
                            >
                            <option value="">All Categories</option>
                            <option value="Rolex">Rolex</option>
                            <option value="Omega">Omega</option>
                            <option value="Patek Philips">Patek Philips</option>
                            <option value="Casio">Casio</option>
                            <option value="Audemars Piguet">Audemars Piguet</option>
                            <option value="Tag Heuer">Tag Heuer</option>
                        </select>
                    </div>

                    <div class="flex justify-end">
                        <button
                            type="submit"
                            class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition duration-200"
                            >
                            Apply Filters
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <!-- list -->
        <div class="container mx-auto w-[75rem] h-[61rem] pt-[1rem] bg-white">
            <div class="grid grid-cols-3 grid-rows-2 h-[60rem]">
                <%
                    ArrayList<ProductDTO> productList = (ArrayList<ProductDTO>) request.getAttribute("productList");
                    if (productList != null && !productList.isEmpty()) {
                        int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
                        int itemsPerPage = 6;
                        int start = (currentPage - 1) * itemsPerPage;
                        int end = Math.min(start + itemsPerPage, productList.size());

                        for (int i = start; i < end; i++) {
                            ProductDTO product = productList.get(i);
                %>
                <div
                    class="card-block w-full h-full bg-black hover:shadow-2xl transform hover:translate-y-[-0.25rem] transition-all duration-300 ease-in-out">
                    <a href="MainController?action=productDetail&productID=<%= product.getProduct_id()%>&categoryID=<%= product.getCategory_id()%>">
                        <div class="card-img h-[80%] w-full overflow-hidden rounded-lg">
                            <img src="./assets/img/<%= product.getImg_link()%>" 

                                 alt="<%= product.getProduct_name()%>" 
                                 class="w-full h-full object-cover transform transition-transform duration-300 ease-in-out hover:scale-110">
                        </div>
                    </a>
                    <div class="content-card-item h-[20%] flex flex-col justify-around items-center p-2">
                        <div class="card-text text-2xl font-bold text-white text-start textHeader_font w-full flex justify-start">
                            <%= product.getProduct_name()%>
                        </div>
                        <div class="flex justify-between w-full">
                            <span class="text-2xl font-bold text-white flex items-center">
                                $<%= product.getPrice()%>
                            </span>
                            <button
                                class="add-to-cartbtn h-10 flex items-center justify-center text-xl font-bold text-white bg-transparent relative rounded-lg outline-none border-2 border-yellow-950 p-2">
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
                <%
                    }
                } else {
                %>
                <p class="text-center col-span-3 text-xl">No products found.</p>
                <% } %>
            </div>
        </div>

        <!-- Page Number -->
        <div class="container mx-auto w-[75rem] flex justify-center mt-8">
            <ul class="flex space-x-4">
                <%
                    int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
                    int totalProducts = productList != null ? productList.size() : 0;
                    int itemsPerPage = 6;
                    int totalPages = (int) Math.ceil((double) totalProducts / itemsPerPage);

                    for (int i = 1; i <= totalPages; i++) {
                %>
                <li>
                    <a href="?action=productList&page=<%= i%>" 
                       class="page-btn px-4 py-2 border rounded-lg <%= (i == currentPage) ? "bg-gray-300" : "bg-gray-100 hover:bg-gray-200"%>">
                        <%= i%>
                    </a>
                </li>
                <% }%>
            </ul>
        </div>


        <!-- footer -->
        <footer class="footer w-full bg-black text-white py-8 mt-8">
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

                    <!--  -->
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

                    <!--  -->
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

        <!-- JavaScript -->
        <script>
            // Toggle the visibility of filter section
            const toggleFiltersBtn = document.getElementById('toggleFiltersBtn');
            const filterSection = document.getElementById('filterSection');
            toggleFiltersBtn.addEventListener('click', () => {
                filterSection.classList.toggle('hidden');
            });
        </script>
        <script src="./js/app-ProductList.js"></script>
    </body>
</html>