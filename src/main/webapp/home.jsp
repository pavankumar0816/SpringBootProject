<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<!-- Include Tailwind CSS -->
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-to-r from-red-400 via-orange-400 via-yellow-400 via-green-400 via-blue-400 to-purple-400 font-sans h-screen">

<%@include file="mainnavbar.jsp" %>

<!-- Main content area -->
<div class="container mx-auto mt-10">
    <div class="bg-yellow-200 p-8 rounded-lg shadow-lg w-1/3 mx-auto">
        <ol class="list-decimal text-lg text-gray-900 space-y-4">
            <li>Controller Layer will access Service Layer</li>
            <li>Service Layer will access Repository Layer</li>
            <li>Repository Layer contains Database Logic</li>
        </ol>
    </div>
</div>

</body>
</html>
