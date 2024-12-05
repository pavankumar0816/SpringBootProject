<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="h-screen">
<%@include file="adminnavbar.jsp" %>

    <div class="flex items-center justify-center h-full">
        <div class="text-center">
            <h1 class="text-3xl font-bold text-gray-700">
                Welcome to the Admin Home
            </h1>
            <br><br>
            <div class="mt-6 p-4 bg-yellow-200 border border-yellow-400 rounded-lg shadow-md text-lg text-center text-gray-800">
                Total Employees = <c:out value="${empcount}"></c:out>
            </div>
        </div>
    </div>

</body>
</html>
