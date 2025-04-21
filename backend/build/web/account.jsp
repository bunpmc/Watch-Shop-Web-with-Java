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
      href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&family=Edu+AU+VIC+WA+NT+Arrows:wght@400.700&family=Playwrite+DE+Grund:wght@100.400&family=Edu+AU+VIC+WA+NT+Pre:wght@400.700&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./assets/css/style.css" />
    <link rel="stylesheet" href="./assets/css/account.css" />
  </head>
  <body>
    <div class="h-screen flex items-center justify-center">
      <!-- Background -->
      <div class="absolute inset-0">
        <img class="w-full h-full" src="./assets/css/loginPage.jpg" alt="" />
      </div>
      <!-- Overlay -->
      <div class="absolute inset-0 bg-black bg-opacity-10"></div>
      <!-- Form Container -->
      <div
        class="relative z-10 w-[25rem] h-[31.25rem] overflow-hidden bg-[rgba(0,0,0,0.4) backdrop-blur-md rounded-xl form-container"
      >
        <!-- Login Form -->
        <div
          id="login-form"
          class="form login absolute w-full h-full p-5 transform transition-all duration-500 ease-in-out"
        >
          <h1
            class="text-3xl font-bold text-center mb-4 text-white textHeader_font"
          >
            Login
          </h1>
          <form action="./login?action=login" method="post">
            <!-- Phone Number -->
            <div class="mb-4">
              <label for="login-phone" class="block font-medium mb-2 text-white"
                >Phone Number</label
              >
              <input
                type="tel"
                id="login-phone"
                name="phone"
                pattern="[0-9]{10,15}"
                title="Enter a valid phone number (10 to 15 digits)"
                oninput="this.value = this.value.replace(/\s/g, '');"
                class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500"
                placeholder="Enter your phone number"
                required
              />
            </div>
            <!-- Password -->
            <div class="mb-6">
              <label
                for="login-password"
                class="block font-medium mb-2 text-white"
                >Password</label
              >
              <input
                type="password"
                id="login-password"
                name="password"
                class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500"
                placeholder="Enter your password"
                required
              />
            </div>
            <button
              type="submit"
              class="w-full py-2 rounded-lg transition text-black bg-[var(--color-yellow)]"
            >
              Login
            </button>
          </form>
          <p class="text-center mt-4 text-white">
            Don't have an account?
            <a
              id="showRegister"
              class="hover:underline font-medium cursor-pointer text-yellow-500"
              >Sign up</a
            >
          </p>
        </div>

        <!-- Register Form -->
        <div
          class="form register absolute w-full h-full p-5 transform transition-all duration-500 ease-in-out translate-x-full"
        >
          <h1
            class="text-3xl font-bold text-center mb-4 text-white textHeader_font"
          >
            Register
          </h1>
          <form action="./register?action=register" method="post">
            <!-- Username -->
            <div class="mb-4">
              <label
                for="register-username"
                class="block font-medium mb-2 text-white"
                >Username</label
              >
              <input
                type="text"
                id="register-username"
                name="username"
                class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500"
                placeholder="Enter your username"
                required
              />
            </div>
            <!-- Phone Number -->
            <div class="mb-4">
              <label
                for="register-phone"
                class="block font-medium mb-2 text-white"
                >Phone Number</label
              >
              <input
                type="tel"
                id="register-phone"
                name="phone"
                pattern="[0-9]{10,15}"
                title="Enter a valid phone number (10 to 15 digits)"
                oninput="this.value = this.value.replace(/\s/g, '');"
                class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500"
                placeholder="Enter your phone number"
                required
              />
            </div>
            <!-- Password -->
            <div class="mb-6">
              <label
                for="register-password"
                class="block font-medium mb-2 text-white"
                >Password</label
              >
              <input
                type="password"
                id="register-password"
                name="password"
                class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-yellow-500 focus:border-yellow-500"
                placeholder="Enter your password"
                required
              />
            </div>
            <button
              type="submit"
              class="w-full py-2 rounded-lg transition text-black bg-[var(--color-yellow)]"
            >
              Register
            </button>
          </form>
          <p class="text-center mt-4 text-white">
            Already have an account?
            <a
              id="showLogin"
              class="hover:underline font-medium cursor-pointer text-yellow-500"
              >Log in</a
            >
          </p>
        </div>
      </div>
    </div>

    <!-- JavaScript -->
    <script src="./js/app-Account.js"></script>
  </body>
</html>
