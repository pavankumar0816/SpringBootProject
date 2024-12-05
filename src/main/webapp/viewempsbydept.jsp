<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee) session.getAttribute("employee");
if (emp == null) {
    response.sendRedirect("empsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Employees by Department</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }
        table, th, td {
            border: 2px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }
        th {
            background-color: black;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <aside class="fixed top-0 left-0 w-64 h-full bg-gray-800 text-white shadow-md flex flex-col justify-between transition-all duration-500 ease-in-out transform">
        <!-- Sidebar Menu -->
        <div class="py-4 px-6 pt-24">
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
        <div class="pt-24 px-6">
            <h3 class="text-center text-2xl mb-4"><u>View Employees by Department</u></h3>
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>DEPARTMENT</th>
                    <th>SALARY</th>
                    <th>LOCATION</th>
                    <th>EMAIL</th>
                    <th>CONTACT</th>
                    <th>STATUS</th>
                </tr>
                <c:forEach items="${emplist}" var="emp">
                    <tr>
                        <td><c:out value="${emp.id}"/></td>
                        <td><c:out value="${emp.name}"/></td>
                        <td><c:out value="${emp.gender}"/></td>
                        <td><c:out value="${emp.dateofbirth}"/></td>
                        <td><c:out value="${emp.department}"/></td>
                        <td><c:out value="${emp.salary}"/></td>
                        <td><c:out value="${emp.location}"/></td>
                        <td><c:out value="${emp.email}"/></td>
                        <td><c:out value="${emp.contact}"/></td>
                        <td><c:out value="${emp.status}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>
