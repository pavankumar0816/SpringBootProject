<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp == null) {
    response.sendRedirect("empsessionexpiry");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
   <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

    <!-- Sidebar -->
    <aside class="fixed top-0 left-0 w-64 h-full bg-gray-800 text-white shadow-md flex flex-col justify-between transition-all duration-500 ease-in-out transform">
        <!-- Sidebar Menu -->
        <div class="py-4 px-6 pt-24"> <!-- Adjusted padding here -->
            <h2 class="text-xl font-bold mb-6">Employee Menu</h2>
            <ul class="space-y-4">
                <li>
                    <a href="emphome" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">
                        Home
                    </a>
                </li>
                <li>
                    <a href="empprofile" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">
                        Profile
                    </a>
                </li>
                <li>
                    <a href="updateemp" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">
                        Update Profile
                    </a>
                </li>
                <li>
                    <a href="empcontactus" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">
                        Contact Us
                    </a>
                </li>
            </ul>
        </div>

        <!-- Logout Button at the Bottom -->
        <div class="py-4 px-6 mb-4">
            <a href="emplogout" class="block bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg text-center transition-all duration-300 ease-in-out">
                Logout
            </a>
        </div>
    </aside>

    <!-- Main Content Area -->
    <div class="flex-1 flex flex-col ml-64">
        <!-- Navbar -->
        <nav class="bg-white w-full z-20 top-0 left-0 border-b border-gray-200 p-4 fixed">
            <div class="max-w-screen-xl mx-auto flex items-center justify-between">
                <h2 class="text-2xl font-semibold text-blue-700">Spring Boot MVC SDP Project</h2>
            </div>
        </nav>

        <!-- Content -->
        <div class="pt-24 px-8 pb-12">
            <h3 class="text-2xl text-center text-blue-600 mb-8"><u>Contact Us</u></h3>
            <div class="max-w-xl mx-auto bg-white p-6 rounded-lg shadow-md">
                <form method="post" action="sendemail">
                    <div class="space-y-4">
                        <div>
                            <label for="name" class="block text-gray-700">Name</label>
                            <input type="text" id="name" name="name" required class="w-full p-2 border border-gray-300 rounded-lg"/>
                        </div>
                        <div>
                            <label for="email" class="block text-gray-700">Email ID</label>
                            <input type="email" id="email" name="email" required class="w-full p-2 border border-gray-300 rounded-lg"/>
                        </div>
                        <div>
                            <label for="subject" class="block text-gray-700">Subject</label>
                            <input type="text" id="subject" name="subject" required class="w-full p-2 border border-gray-300 rounded-lg"/>
                        </div>
                        <div>
                            <label for="message" class="block text-gray-700">Message</label>
                            <textarea name="message" id="message" required class="w-full p-2 border border-gray-300 rounded-lg"></textarea>
                        </div>
                    </div>
                    <div class="flex justify-between mt-6">
                        <input type="submit" value="Send" class="bg-blue-600 text-white py-2 px-6 rounded-lg cursor-pointer hover:bg-blue-700 transition duration-300"/>
                        <input type="reset" value="Clear" class="bg-gray-300 py-2 px-6 rounded-lg cursor-pointer hover:bg-gray-400 transition duration-300"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>
