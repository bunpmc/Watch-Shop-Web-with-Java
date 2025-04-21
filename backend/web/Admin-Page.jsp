<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Account</title>
    <!-- External Libraries -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&family=Edu+AU+VIC+WA+NT+Arrows:wght@400..700&family=Playwrite+DE+Grund:wght@100..400&family=Edu+AU+VIC+WA+NT+Pre:wght@400..700&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../web/assets/css/style.css" />
    <link rel="stylesheet" href="../web/assets/css/adminPage.css" />
  </head>
  <body class="bg-gray-100">
    <!-- code here -->
    <header class="w-full h-16 bg-black">
      <div
        class="container mx-auto w-[75rem] h-full flex justify-between items-center"
      >
        <div class="font-bold text-white text-3xl textHeader_font">
          <a href="">VN WATCH SHOP</a>
        </div>
        <div class="w-16 h-16">
          <a href=""><img src="../assets/img/Logo-Shop.jpg" alt="" /></a>
        </div>
        <div class="flex ml-[8rem]">
          <a href="./account.html" class="text-white text-3xl mx-2 text-end"
            >Logout</a
          >
          <a href="./account.html"></a>
        </div>
      </div>
    </header>

    <div class="container mx-auto w-[75rem] h-auto mt-3">
      <!-- Header with tabs -->
      <div
        class="h-[3rem] w-full bg-gray-400 flex items-center justify-around text-white"
      >
        <button
          class="tab-title w-1/3 h-full text-xl text-black"
          id="orders-tab"
        >
          ORDERS
        </button>
        <button
          class="tab-title w-1/3 h-full text-xl text-black"
          id="products-tab"
        >
          PRODUCTS
        </button>
        <button
          class="tab-title w-1/3 h-full text-xl text-black"
          id="users-tab"
        >
          USERS
        </button>
      </div>

      <!-- Order -->
      <div id="orders" class="tab-content p-4 bg-yellow-200">
        <!-- Search bar -->
        <div class="search-bar mb-4">
          <input
            type="text"
            class="w-full p-2 rounded-lg border"
            placeholder="Search orders..."
          />
        </div>
        <!-- Order info -->
        <div
          class="grid grid-cols-3 gap-4 w-full h-full bg-white items-center justify-items-center mb-4 text-center pl-4 pr-[4rem] py-2"
        >
          <p class="border-r-2 w-full h-full">ORDER ID</p>
          <p class="border-r-2 w-full h-full">CUSTOMER NAME</p>
          <p>CREATED AT</p>
        </div>

        <!-- orders list -->
        <div class="order-list">
          <!-- o1 -->
          <div
            class="order-item p-4 mb-4 h-full w-full bg-white rounded-lg shadow-md flex items-center justify-between"
          >
            <div
              class="grid grid-cols-3 gap-4 w-full h-full items-center justify-items-center text-center"
            >
              <p class="border-r-2 w-full h-full">1</p>
              <p class="border-r-2 w-full h-full">Thần đằng</p>
              <p>30/02/2025 25:30</p>
            </div>

            <a
              href="./orderDetail.html"
              class="btn bg-blue-500 text-white p-2 rounded-lg"
            >
              View
            </a>
          </div>
          <!-- o2 -->
          <div
            class="order-item p-4 mb-4 h-full w-full bg-white rounded-lg shadow-md flex items-center justify-between"
          >
            <div
              class="grid grid-cols-3 gap-4 w-full h-full items-center justify-items-center text-center"
            >
              <p class="border-r-2 w-full h-full">2</p>
              <p class="border-r-2 w-full h-full">Gấu Bắc Cực</p>
              <p>12/12/2024 14:30</p>
            </div>

            <a
              href="./orderDetail.html"
              class="btn bg-blue-500 text-white p-2 rounded-lg"
            >
              View
            </a>
          </div>
        </div>
      </div>

      <!-- Products -->

      <div id="products" class="tab-content p-4 bg-yellow-200">
        <!--Add, List, Update -->
        <div
          class="h-[3rem] w-full bg-gray-400 flex items-center justify-around text-white mb-4"
        >
          <button
            class="sub-tab-title w-1/3 h-full text-xl text-black"
            id="add-product-tab"
          >
            Add
          </button>
          <button
            class="sub-tab-title w-1/3 h-full text-xl text-black"
            id="list-product-tab"
          >
            List
          </button>
          <button
            class="sub-tab-title w-1/3 h-full text-xl text-black"
            id="update-product-tab"
          >
            Update
          </button>
        </div>

        <!-- Add Product -->
        <div
          id="add-product"
          class="sub-tab-content p-6 bg-white hidden rounded-lg shadow-lg"
        >
          <h2 class="text-2xl font-bold text-gray-800 mb-6">Add New Product</h2>
          <form class="space-y-6">
            <!-- Name -->
            <div>
              <label
                for="product-name"
                class="block text-gray-700 font-semibold"
                >Product Name</label
              >
              <input
                type="text"
                id="product-name"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
                placeholder="Enter product name"
              />
            </div>
            <!-- Stock -->
            <div>
              <label
                for="product-stock"
                class="block text-gray-700 font-semibold"
                >Stock</label
              >
              <input
                type="number"
                id="product-stock"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
                placeholder="Enter stock quantity"
              />
            </div>
            <!-- Price -->
            <div>
              <label
                for="product-price"
                class="block text-gray-700 font-semibold"
                >Price</label
              >
              <input
                type="number"
                id="product-price"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
                placeholder="Enter price"
              />
            </div>
            <!-- Category -->
            <div>
              <label
                for="product-category"
                class="block text-gray-700 font-semibold"
                >Category</label
              >
              <select
                id="product-category"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
              >
                <option value="" disabled selected>Select category</option>
                <option value="watches">Watches</option>
                <option value="accessories">Accessories</option>
                <option value="jewelry">Jewelry</option>
                <!-- Add more categories as needed -->
              </select>
            </div>
            <!-- Desc -->
            <div>
              <label
                for="product-description"
                class="block text-gray-700 font-semibold"
                >Description</label
              >
              <textarea
                id="product-description"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
                placeholder="Enter product description"
                rows="4"
              ></textarea>
            </div>
            <!--  ImLink -->
            <div>
              <label for="product-img" class="block text-gray-700 font-semibold"
                >Image Link</label
              >
              <input
                type="url"
                id="product-img"
                class="w-full p-3 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black"
                placeholder="Enter image URL"
              />
            </div>

            <button
              type="submit"
              class="w-full p-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-all duration-300"
            >
              Add Product
            </button>
          </form>
        </div>

        <!-- List Products -->
        <div id="list-product" class="sub-tab-content p-4 bg-white hidden">
          <h2 class="text-xl font-bold">Product List</h2>

          <!-- Search bar -->
          <div class="search-bar mb-4">
            <input
              type="text"
              id="product-search"
              class="w-full p-2 rounded-lg border"
              placeholder="Search products..."
            />
          </div>

          <!-- Product List -->
          <div class="product-list">
            <!-- Product 1 -->
            <div
              class="product-item p-4 mb-4 bg-gray-100 rounded-lg shadow-md flex justify-between items-center"
            >
              <div class="flex-1 text-center">
                <p class="font-semibold">ID: 001</p>
                <p class="text-sm text-gray-600">Product Name: Luxury Watch</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">$500</p>
                <p class="text-sm text-gray-600">Price</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">120</p>
                <p class="text-sm text-gray-600">Sold</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">200</p>
                <p class="text-sm text-gray-600">Stock</p>
              </div>
              <button class="btn bg-red-500 text-white p-2 rounded-lg">
                Delete
              </button>
            </div>

            <!-- Product 2 -->
            <div
              class="product-item p-4 mb-4 bg-gray-100 rounded-lg shadow-md flex justify-between items-center"
            >
              <div class="flex-1 text-center">
                <p class="font-semibold">ID: 002</p>
                <p class="text-sm text-gray-600">
                  Product Name: Silver Bracelet
                </p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">$80</p>
                <p class="text-sm text-gray-600">Price</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">300</p>
                <p class="text-sm text-gray-600">Sold</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">500</p>
                <p class="text-sm text-gray-600">Stock</p>
              </div>
              <button class="btn bg-red-500 text-white p-2 rounded-lg">
                Delete
              </button>
            </div>
          </div>
        </div>

        <!-- Update Product -->
        <div id="update-product" class="sub-tab-content p-4 bg-white hidden">
          <h2 class="text-xl font-bold">Product List</h2>

          <!-- Search bar -->
          <div class="search-bar mb-4">
            <input
              type="text"
              id="product-search"
              class="w-full p-2 rounded-lg border"
              placeholder="Search products..."
            />
          </div>

          <!-- Product List -->
          <div class="product-list">
            <!-- Product 1 -->
            <div
              class="product-item p-4 mb-4 bg-gray-100 rounded-lg shadow-md flex justify-between items-center"
            >
              <div class="flex-1 text-center">
                <p class="font-semibold">ID: 001</p>
                <p class="text-sm text-gray-600">Product Name: Luxury Watch</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">$500</p>
                <p class="text-sm text-gray-600">Price</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">120</p>
                <p class="text-sm text-gray-600">Sold</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">200</p>
                <p class="text-sm text-gray-600">Stock</p>
              </div>
              <button
                class="btn bg-black text-white p-2 rounded-lg"
                onclick="openUpdateModal('001', 'Luxury Watch', 500, 120, 200, 'watches', 'A luxury watch with premium features', 'https://example.com/watch.jpg')"
              >
                Update
              </button>
            </div>

            <!-- Product 2 -->
            <div
              class="product-item p-4 mb-4 bg-gray-100 rounded-lg shadow-md flex justify-between items-center"
            >
              <div class="flex-1 text-center">
                <p class="font-semibold">ID: 002</p>
                <p class="text-sm text-gray-600">
                  Product Name: Silver Bracelet
                </p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">$80</p>
                <p class="text-sm text-gray-600">Price</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">300</p>
                <p class="text-sm text-gray-600">Sold</p>
              </div>
              <div class="flex-1 text-center">
                <p class="font-semibold">500</p>
                <p class="text-sm text-gray-600">Stock</p>
              </div>
              <button
                class="btn bg-black text-white p-2 rounded-lg"
                onclick="openUpdateModal('002', 'Silver Bracelet', 80, 300, 500, 'accessories', 'A stylish silver bracelet', 'https://example.com/bracelet.jpg')"
              >
                Update
              </button>
            </div>
          </div>

          <!-- Update modal -->
          <div
            id="update-modal"
            class="hidden fixed inset-0 flex items-center justify-center bg-gray-500 bg-opacity-50 z-50"
          >
            <div class="bg-white p-6 rounded-lg shadow-lg w-1/2">
              <h3 class="text-xl font-bold mb-4">Update Product</h3>
              <form>
                <!-- Product ID (Hidden) -->
                <input type="hidden" id="update-product-id" />

                <!-- Product Name -->
                <div class="mb-4">
                  <label for="update-product-name" class="block"
                    >Product Name</label
                  >
                  <input
                    type="text"
                    id="update-product-name"
                    class="w-full p-2 rounded-lg border"
                    placeholder="Enter product name"
                  />
                </div>

                <!-- Stock -->
                <div class="mb-4">
                  <label for="update-product-stock" class="block">Stock</label>
                  <input
                    type="number"
                    id="update-product-stock"
                    class="w-full p-2 rounded-lg border"
                    placeholder="Enter stock quantity"
                  />
                </div>

                <!-- Price -->
                <div class="mb-4">
                  <label for="update-product-price" class="block">Price</label>
                  <input
                    type="number"
                    id="update-product-price"
                    class="w-full p-2 rounded-lg border"
                    placeholder="Enter price"
                  />
                </div>

                <!-- Category -->
                <div class="mb-4">
                  <label for="update-product-category" class="block"
                    >Category</label
                  >
                  <select
                    id="update-product-category"
                    class="w-full p-2 rounded-lg border"
                  >
                    <option value="watches">Watches</option>
                    <option value="accessories">Accessories</option>
                    <option value="jewelry">Jewelry</option>
                  </select>
                </div>

                <!-- Description -->
                <div class="mb-4">
                  <label for="update-product-description" class="block"
                    >Description</label
                  >
                  <textarea
                    id="update-product-description"
                    class="w-full p-2 rounded-lg border"
                    placeholder="Enter description"
                  ></textarea>
                </div>

                <!-- Image Link -->
                <div class="mb-4">
                  <label for="update-product-img" class="block"
                    >Image Link</label
                  >
                  <input
                    type="url"
                    id="update-product-img"
                    class="w-full p-2 rounded-lg border"
                    placeholder="Enter image URL"
                  />
                </div>

                <!-- Submit Button -->
                <button
                  type="submit"
                  class="btn bg-black text-white p-2 rounded-lg"
                >
                  Update Product
                </button>
                <button
                  type="button"
                  onclick="closeUpdateModal()"
                  class="btn bg-gray-500 text-white p-2 rounded-lg ml-2"
                >
                  Cancel
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Users  -->
      <div id="users" class="tab-content p-4 bg-yellow-200">
        <div class="search-bar mb-4">
          <input
            type="text"
            class="w-full p-2 rounded-lg border"
            placeholder="Search users..."
          />
        </div>

        <div
          class="user-item p-4 mb-4 bg-white rounded-lg shadow-md grid grid-cols-5 gap-4 items-center"
        >
          <div class="text-center">FULLNAME</div>
          <div class="text-center">USERNAME</div>
          <div class="text-center">PHONE NUMBER</div>
          <div class="text-center">STATUS</div>
          <div class="text-center">ACTION</div>
        </div>
        <!-- User 1 -->
        <div
          class="user-item p-4 mb-4 bg-white rounded-lg shadow-md grid grid-cols-5 gap-4 items-center"
        >
          <p class="text-center">Nguyen Van A</p>
          <p class="text-center">Thienxukhongdau123</p>
          <p class="text-center">0708456478</p>
          <p class="text-center">Active</p>
          <div class="w-full h-full flex justify-center">
            <button class="btn w-[30%] bg-red-500 text-white p-2 rounded-lg">
              Ban
            </button>
          </div>
        </div>
        <!-- User 2 -->
        <div
          class="user-item p-4 mb-4 bg-white rounded-lg shadow-md grid grid-cols-5 gap-4 items-center"
        >
          <p class="text-center">Tran Thi B</p>
          <p class="text-center">Anhdiennang</p>
          <p class="text-center">0909123876</p>
          <p class="text-center">Banned</p>
          <div class="w-full h-full flex justify-center">
            <button class="btn w-[30%] bg-green-500 text-white p-2 rounded-lg">
              Unban
            </button>
          </div>
        </div>
      </div>
    </div>
    <script src="../web/js/app-Admin.js"></script>
  </body>
</html>
