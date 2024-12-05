<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
    response.sendRedirect("empsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Home</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        /* Animation styles for card */
        .animated-card {
            opacity: 0;
            transform: translateY(50px);
            animation: fadeInUp 1s ease forwards;
        }

        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body class="bg-gray-100 h-screen flex flex-col">

    <%@include file="empnavbar.jsp" %>

    <!-- Main Content Area -->
    <div class="flex-1 flex items-center justify-center mt-8"> <!-- Reduced margin -->
        <!-- Card Container with Animation -->
        <div class="bg-blue-100 shadow-xl rounded-lg p-6 w-full max-w-md mx-auto text-center animated-card"> <!-- Reduced padding -->
            <h3 class="text-2xl font-bold text-blue-900 mb-6"><u>My Profile</u></h3>
            <div class="space-y-4 text-gray-800 text-left">
                <div class="flex justify-between">
                    <span class="font-semibold">ID:</span>
                    <span><%= emp.getId() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">NAME:</span>
                    <span><%= emp.getName() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">GENDER:</span>
                    <span><%= emp.getGender() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">DATE OF BIRTH:</span>
                    <span><%= emp.getDateofbirth() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">DEPARTMENT:</span>
                    <span><%= emp.getDepartment() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">SALARY:</span>
                    <span><%= emp.getSalary() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">LOCATION:</span>
                    <span><%= emp.getLocation() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">EMAIL:</span>
                    <span><%= emp.getEmail() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">CONTACT:</span>
                    <span><%= emp.getContact() %></span>
                </div>
                <div class="flex justify-between">
                    <span class="font-semibold">STATUS:</span>
                    <span><%= emp.getStatus() %></span>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
