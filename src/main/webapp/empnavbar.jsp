<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex">

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
                    <a href="viewempsbydept" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">
                        View Employees By Department
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

        <!-- Page Content -->
        <div class="mt-20 p-6">
            <!-- Add your page content here -->
        </div>
    </div>

</body>
</html>
