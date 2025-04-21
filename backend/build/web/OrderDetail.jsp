<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order Detail</title>
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

    <!-- Custom CSS (optional) -->
    <link rel="stylesheet" href="../assets/css/style.css" />
  </head>
  <body class="bg-gray-100 p-8">
    <div class="container mx-auto bg-white p-6 rounded-lg shadow-lg">
      <h2 class="text-2xl font-bold text-center mb-6 text-gray-800">
        Order Details
      </h2>

      <!-- Customer Information -->
      <div class="mb-6">
        <h3 class="text-xl font-semibold text-gray-700 mb-2">
          Customer Information
        </h3>
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-4">
          <div>
            <p class="text-sm text-gray-600">
              <strong>Full Name:</strong> Thần Đằng
            </p>
            <p class="text-sm text-gray-600">
              <strong>Address:</strong> 123 Main St, City, Country
            </p>
            <p class="text-sm text-gray-600">
              <strong>Phone Number:</strong> +84 123 456 789
            </p>
          </div>
          <div>
            <p class="text-sm text-gray-600">
              <strong>Email:</strong> than.dang@example.com
            </p>
            <p class="text-sm text-gray-600">
              <strong>Order Date:</strong> 30/02/2025
            </p>
          </div>
        </div>
      </div>

      <!-- Product List -->
      <div class="mb-6">
        <h3 class="text-xl font-semibold text-gray-700 mb-2">Product List</h3>
        <div class="overflow-x-auto">
          <table class="w-full table-auto border-collapse">
            <thead>
              <tr class="bg-gray-200">
                <th
                  class="px-6 py-3 text-left text-sm font-medium text-gray-600"
                >
                  Product Name
                </th>
                <th
                  class="px-6 py-3 text-left text-sm font-medium text-gray-600"
                >
                  Quantity
                </th>
                <th
                  class="px-6 py-3 text-left text-sm font-medium text-gray-600"
                >
                  Price
                </th>
                <th
                  class="px-6 py-3 text-left text-sm font-medium text-gray-600"
                >
                  Total
                </th>
              </tr>
            </thead>
            <tbody>
              <!-- Product 1 -->
              <tr class="border-t border-b">
                <td class="px-6 py-4 text-sm text-gray-700">Luxury Watch</td>
                <td class="px-6 py-4 text-sm text-gray-700">2</td>
                <td class="px-6 py-4 text-sm text-gray-700">$500</td>
                <td class="px-6 py-4 text-sm text-gray-700">$1000</td>
              </tr>
              <!-- Product 2 -->
              <tr class="border-t border-b">
                <td class="px-6 py-4 text-sm text-gray-700">Silver Bracelet</td>
                <td class="px-6 py-4 text-sm text-gray-700">3</td>
                <td class="px-6 py-4 text-sm text-gray-700">$80</td>
                <td class="px-6 py-4 text-sm text-gray-700">$240</td>
              </tr>
              <!-- Total Row -->
              <tr class="border-t border-b bg-gray-100">
                <td
                  colspan="3"
                  class="px-6 py-4 text-right text-sm font-semibold text-gray-700"
                >
                  Total
                </td>
                <td class="px-6 py-4 text-sm font-semibold text-gray-700">
                  $1240
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

      <!-- Order Status -->
      <div>
        <h3 class="text-xl font-semibold text-gray-700 mb-2">Order Status</h3>
        <p class="text-sm text-gray-600">
          Order Status: <span class="text-green-500">Completed</span>
        </p>
      </div>
    </div>
  </body>
</html>
