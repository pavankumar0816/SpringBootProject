<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gradient-to-r from-red-400 via-orange-400 to-purple-400 flex items-center justify-center min-h-screen font-sans">

    <%@include file="adminnavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="flex flex-col items-center w-full ml-64">
        <div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-md mt-20">
            <h3 class="text-center text-2xl font-semibold mb-6 text-blue-700"><u>Add Customer</u></h3>

            <form:form modelAttribute="customer" method="post" action="insertcustomer" class="space-y-6">
                <div>
                    <label class="block font-medium text-gray-700">Name</label>
                    <form:input path="name" required="required" class="w-full p-2 border border-gray-300 rounded"/>
                </div>

                <div>
                    <label class="block font-medium text-gray-700">Gender</label>
                    <div class="flex items-center space-x-4">
                        <label class="flex items-center">
                            <form:radiobutton path="gender" value="Male" required="required" class="mr-1"/> Male
                        </label>
                        <label class="flex items-center">
                            <form:radiobutton path="gender" value="Female" required="required" class="mr-1"/> Female
                        </label>
                    </div>
                </div>

                <div>
                    <label class="block font-medium text-gray-700">Email ID</label>
                    <form:input path="email" required="required" class="w-full p-2 border border-gray-300 rounded"/>
                </div>

                <div>
                    <label class="block font-medium text-gray-700">Password</label>
                    <form:password path="password" required="required" class="w-full p-2 border border-gray-300 rounded"/>
                </div>

                <div>
                    <label class="block font-medium text-gray-700">Address</label>
                    <form:textarea path="address" required="required" class="w-full p-2 border border-gray-300 rounded"/>
                </div>

                <div>
                    <label class="block font-medium text-gray-700">Contact No</label>
                    <form:input path="contactno" required="required" class="w-full p-2 border border-gray-300 rounded"/>
                </div>

                <div class="flex space-x-4 mt-6">
                    <input type="submit" value="Add" class="w-full bg-blue-700 text-white py-2 rounded-md hover:bg-blue-800 cursor-pointer transition"/>
                    <input type="reset" value="Clear" class="w-full bg-gray-300 text-gray-700 py-2 rounded-md hover:bg-gray-400 cursor-pointer transition"/>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
