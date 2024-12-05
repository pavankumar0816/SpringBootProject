<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Framer Motion -->
    <script src="https://unpkg.com/framer-motion@6/dist/framer-motion.umd.js"></script>
</head>
<body class="bg-gradient-to-r from-indigo-400 via-purple-400 to-pink-400 font-sans min-h-screen flex flex-col">

  <!-- Include Navbar -->
  <%@include file="mainnavbar.jsp" %>

  <!-- Employee Login Form Container -->
  <div class="flex-grow flex items-start justify-center mt-16">  
    <div id="login-card" class="w-full max-w-sm bg-white rounded-lg shadow-lg p-6 space-y-4 transform transition-all duration-500">
        <h3 class="text-center text-xl font-semibold text-gray-700 underline">Employee Login</h3>
        
        <!-- Error Message if Present -->
        <h4 align="center" class="text-red-500">
            <c:out value="${message}"></c:out>
        </h4>
        
        <form method="post" action="checkemplogin" class="space-y-4">
            <div>
                <label for="eemail" class="block text-gray-600">Enter Email ID</label>
                <input type="email" id="eemail" name="eemail" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-400" required />
            </div>
            <div>
                <label for="epwd" class="block text-gray-600">Enter Password</label>
                <input type="password" id="epwd" name="epwd" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-indigo-400" required />
            </div>
            <div class="flex justify-between items-center">
                <button type="submit" class="bg-indigo-500 hover:bg-indigo-600 text-white font-semibold py-2 px-4 rounded-md focus:outline-none">Login</button>
                <input type="reset" value="Clear" class="bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded-md focus:outline-none"/>
            </div>
        </form>
    </div>
  </div>

  <!-- Framer Motion Script -->
  <script>
      // Using Framer Motion to animate the card on page load
      const { motion } = window["framer-motion"];

      const loginCard = document.getElementById("login-card");

      // Apply animation using Framer Motion
      motion(loginCard, {
          initial: { opacity: 0, scale: 0.8 },
          animate: { opacity: 1, scale: 1 },
          transition: { duration: 0.5 }
      }).start();
  </script>
</body>
</html>
