<%@page import="java.util.ArrayList"%>
<%@page import="models.products.ProductDTO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Details - VN Watch Shop</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&display=swap" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

        <!-- Splide -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css">

        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>

        <!-- Custom CSS -->
        <link rel="stylesheet" href="./assets/css/style.css">
        <link rel="stylesheet" href="./assets/css/Product-detail.css">
    </head>

    <body class="bg-gray-100 font-sans">
        <!-- header -->
        <header id="Home" class="w-full h-16 bg-black shadow-lg">
            <div class="container mx-auto w-[75rem] h-full flex justify-between items-center">
                <div class="font-bold text-white text-3xl flex items-center space-x-2">
                    <a href="">VN WATCH SHOP</a>
                </div>
                <div class="flex justify-center items-center">
                    <a href=""><img class="w-16 h-16 rounded-full shadow-md" src="./assets/img/Logo-Shop.jpg" alt="Logo"></a>
                </div>
                <div class="flex justify-end items-center space-x-4">
                    <a href="https://www.facebook.com/" class="text-white text-2xl hover:text-blue-600">
                        <i class="fa-brands fa-facebook p-1"></i>
                    </a>
                    <a href="https://www.instagram.com/" class="text-white text-2xl hover:text-pink-600">
                        <i class="fa-brands fa-instagram p-1"></i>
                    </a>
                    <a href="https://www.twitter.com/" class="text-white text-2xl hover:text-blue-400">
                        <i class="fa-brands fa-twitter p-1"></i>
                    </a>
                    <div class="text-white text-2xl">|</div>
                    <i class="fa fa-cart-shopping text-2xl text-white p-1 cursor-pointer icon-cart"></i>
                    <div class="text-white text-2xl">|</div>

                    <% String username = (String) session.getAttribute("username");
                        if (username == null || username.isEmpty()) { %>
                    <a href="./account.jsp" class="text-white text-3xl ml-2 hover:text-gray-400">Login</a>
                    <% } else {%>
                    <a class="text-white text-3xl ml-2 hover:text-gray-400"><%= username%></a> 
                    <% } %>
                </div>
            </div>
        </header>


        <!-- Shopping Cart -->
        <div class="fixed inset-0 flex items-center justify-end bg-gray-700 bg-opacity-50 z-50 cartTab">
            <div class="bg-white w-[400px] h-full p-4 overflow-auto">
                <div class="flex justify-between items-center border-b pb-4">
                    <h1 class="text-xl font-semibold">SHOPPING CART</h1>
                    <button class="text-gray-600 text-lg close">&times;</button>
                </div>
                <div class="my-4">
                    <% ProductDTO product = (ProductDTO) request.getAttribute("product");%>
                    <div class="flex items-center space-x-4">
                        <div class="w-24 h-24 overflow-hidden">
                            <img src="./assets/img/<%=product.getImg_link()%>" alt="<%=product.getProduct_name()%>"
                                 class="object-cover w-full h-full">
                        </div>
                        <div class="flex-1">
                            <p class="font-semibold text-lg"><%= product.getProduct_name()%></p>
                            <p class="text-gray-600">$<%= product.getPrice()%></p>
                        </div>
                        <div class="flex items-center gap-2">
                            <button class="w-8 h-8 bg-gray-300 text-gray-800 rounded-full">-</button>
                            <span>1</span>
                            <button class="w-8 h-8 bg-gray-300 text-gray-800 rounded-full">+</button>
                        </div>
                    </div>
                </div>
                <div class="flex justify-between items-center">
                    <div class="close">
                        <button class="bg-gray-700 text-white py-2 px-4 rounded hover:bg-gray-600 close">Close</button>
                    </div>
                    <a href="./CheckOutCart.jsp"
                       class="bg-yellow-500 text-gray-800 py-2 px-4 rounded hover:bg-yellow-400">Checkout</a>
                </div>
            </div>
        </div>

        <!-- Navigation -->
        <nav class="sticky top-0 bg-white z-10 shadow-md">
            <div class="container mx-auto py-3">
                <ul class="flex justify-center space-x-8 text-xl">
                    <li><a href="./home-page.jsp#home" class="text-black">Home</a></li>
                    <li><a href="./ProductController?action=productList" class="text-black">Products</a></li>
                    <li><a href="./home-page.jsp#events" class="text-black">Events</a></li>
                    <li><a href="./home-page.jsp#Bestsellers" class="text-black">Best Sellers</a></li>
                    <li><a href="./home-page.jsp#about-us" class="text-black">About Us</a></li>
                    <li><a href="./home-page.jsp#contact" class="text-black">Contact Us</a></li>
                </ul>
            </div>
        </nav>

        <!-- Product Details -->
        <main class="container mx-auto py-8">
            <section class="flex flex-col lg:flex-row space-y-8 lg:space-x-8">
                <div class="lg:w-1/2 relative">
                    <img src="./assets/img/<%=product.getImg_link()%>" alt="<%=product.getProduct_name()%>"
                         class="w-full h-full object-cover">
                    <% if (product.getStock() > 0) { %>
                    <div class="absolute top-2 right-2 bg-green-500 text-white px-3 py-1 rounded">Available</div>
                    <% } else { %>
                    <div class="absolute top-2 right-2 bg-red-500 text-white px-3 py-1 rounded">Out of Stock</div>
                    <% }%>
                </div>
                <div class="lg:w-1/2">
                    <h1 class="text-4xl font-semibold mb-4"><%= product.getProduct_name()%></h1>
                    <p class="text-3xl font-semibold text-yellow-500 mb-4">
                        $<%= product.getPrice()%>
                    </p>
                    <p class="text-xl text-gray-400 mb-4">
                        In Stock: <span class="text-green-500 font-bold"><%= product.getStock()%></span>
                    </p>

                    <p class="text-lg text-gray-700 mb-4">
                        Discover the perfect blend of style, functionality, and precision with our Premium Watch Collection. Designed to cater to every occasion, these timepieces are crafted to make a statement while offering unparalleled reliability.
                    </p>

                    <h3 class="text-xl font-semibold mb-2">Features & Highlights:</h3>
                    <ul class="list-disc pl-5 text-gray-700">
                        <li><strong>Timeless Design:</strong> With sleek, modern aesthetics and a range of finishes, our watches complement both formal and casual attire effortlessly.</li>
                        <li><strong>Durable Materials:</strong> Built with high-quality stainless steel, scratch-resistant glass, and premium leather or metal straps, these watches are made to last.</li>
                        <li><strong>Precision Movement:</strong> Powered by advanced quartz or automatic mechanisms, ensuring accurate timekeeping and hassle-free maintenance.</li>
                        <li><strong>Water-Resistant:</strong> Designed to withstand everyday splashes and brief immersions, offering peace of mind during daily activities.</li>
                        <li><strong>Versatile Options:</strong> Available in multiple styles, from minimalist dials to multifunction chronographs, catering to diverse tastes and preferences.</li>
                    </ul>

                    <div class="flex space-x-4 mt-6">
                        <button class="bg-blue-500 text-white py-2 px-6 rounded-lg hover:bg-blue-600 transition">
                            Buy Now
                        </button>
                        <button class="bg-yellow-500 text-gray-800 py-2 px-6 rounded-lg hover:bg-yellow-400 transition">
                            Add to Cart
                        </button>
                    </div>
                </div>
            </section>

            <!-- Related Products -->
            <section class="mt-16">
                <h2 class="text-3xl font-semibold mb-6">Related Products</h2>
                <div id="related-products" class="splide">
                    <div class="splide__track">
                        <ul class="splide__list">
                            <%
                                ArrayList<ProductDTO> related = (ArrayList<ProductDTO>) request.getAttribute("related");
                                if (related != null && !related.isEmpty()) {
                                    for (ProductDTO relate : related) {
                            %>
                            <li class="splide__slide">
                                <div class="border rounded-lg overflow-hidden shadow-lg">
                                    <a href="MainController?action=productDetail&productID=<%=relate.getProduct_id()%>&categoryID=<%=relate.getCategory_id()%>">
                                        <img src="./assets/img/<%=relate.getImg_link()%>" alt="<%=relate.getProduct_name()%>"
                                             class="w-full h-48 object-cover">
                                    </a>
                                    <div class="p-4">
                                        <h3 class="text-lg font-bold text-gray-800"><%= relate.getProduct_name()%></h3>
                                        <p class="text-yellow-500">$<%= relate.getPrice()%></p>
                                    </div>
                                </div>
                            </li>
                            <%
                                }
                            } else {
                            %>
                            <li class="text-center">No related products available.</li>
                                <% }%>
                        </ul>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer -->
        <footer class="bg-black text-white py-8">
            <div class="container mx-auto text-center">
                <p>&copy; 2024 VN Watch Shop. All rights reserved.</p>
            </div>
        </footer>

        <!-- Scripts -->
        <script src="./js/app-Product-detail.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"></script>
        <script>
            new Splide('#related-products', {type: 'loop', perPage: 3}).mount();
        </script>
    </body>

</html>
