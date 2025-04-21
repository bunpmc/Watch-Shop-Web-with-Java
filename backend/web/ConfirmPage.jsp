<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Confirm</title>
    <!-- Library -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&family=Edu+AU+VIC+WA+NT+Arrows:wght@400..700&family=Playwrite+DE+Grund:wght@100..400&family=Edu+AU+VIC+WA+NT+Pre:wght@400..700&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet"
    />
    <!-- Tailwind -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../assets/css/style.css" />
  </head>
  <body class="h-screen flex justify-center items-center">
    <div class="max-w-md bg-white rounded-lg shadow-md p-6">
      <div class="flex justify-center mb-4">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="h-12 w-12 text-green-500"
          fill="none"
          viewBox="0 0 24 24"
          stroke="currentColor"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            stroke-width="2"
            d="M5 13l4 4L19 7"
          ></path>
        </svg>
      </div>
      <h2 class="text-2xl font-semibold text-center text-gray-800 mb-2">
        Order Confirmed
      </h2>
      <p class="text-center text-gray-600">
        Your order has been successfully recorded. We will process it shortly.
        Return
        <a
          class="inline-block text-center text-blue-600 hover:underline"
          href="./home-page.jsp"
          >Home</a
        >
      </p>
    </div>
  </body>
</html>
