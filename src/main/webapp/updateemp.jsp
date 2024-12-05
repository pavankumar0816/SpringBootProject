<%@ page import="com.klef.jfsd.springboot.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
Employee emp = (Employee) session.getAttribute("employee");
if (emp == null) {
    response.sendRedirect("empsessionexpiry");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-200">

    <!-- Sidebar -->
    <aside class="fixed top-0 left-0 w-64 h-full bg-gray-800 text-white shadow-md flex flex-col justify-between transition-all duration-500 ease-in-out transform">
        <div class="py-4 px-6 pt-24">
            <h2 class="text-xl font-bold mb-6">Employee Menu</h2>
            <ul class="space-y-4">
                <li><a href="emphome" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">Home</a></li>
                <li><a href="empprofile" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">Profile</a></li>
                <li><a href="updateemp" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">Update Profile</a></li>
                <li><a href="empcontactus" class="block bg-blue-100 hover:bg-blue-200 text-gray-800 px-4 py-2 rounded-lg transition-all duration-300 ease-in-out">Contact Us</a></li>
            </ul>
        </div>
        <div class="py-4 px-6 mb-4">
            <a href="emplogout" class="block bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg text-center transition-all duration-300 ease-in-out">Logout</a>
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
            <%@ include file="empnavbar.jsp" %>

            <h4 align="center" style="color:red">
                <c:out value="${message}"></c:out>
            </h4>

            <h3 style="text-align: center;"><u>Update Employee Profile</u></h3>
            
            <!-- Card Container for Form -->
            <div class="max-w-3xl mx-auto bg-white p-8 rounded-lg shadow-lg my-6">
                <form method="post" action="updateempprofile">
                    <table class="w-full">
                        <tr>
                            <td><label for="eid">Employee ID</label></td>
                            <td><input type="number" id="eid" name="eid" readonly value="<%= emp.getId() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="ename">Enter Name</label></td>
                            <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label>Select Gender</label></td>
                            <td>
                                <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/> <label for="male">Male</label>
                                <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/> <label for="female">Female</label>
                                <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/> <label for="others">Others</label>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="edob">Enter Date of Birth</label></td>
                            <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="edept">Select Department</label></td>
                            <td>
                                <select id="edept" name="edept" required class="border p-2 rounded">
                                    <option value="">---Select---</option>
                                    <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                                    <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                                    <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="esalary">Enter Salary</label></td>
                            <td><input type="number" id="esalary" name="esalary" step="0.01" value="<%= emp.getSalary() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="elocation">Enter Location</label></td>
                            <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="eemail">Enter Email ID</label></td>
                            <td><input type="email" id="eemail" name="eemail" readonly value="<%= emp.getEmail() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="epwd">Enter Password</label></td>
                            <td><input type="password" id="epwd" name="epwd" value="<%= emp.getPassword() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td><label for="econtact">Enter Contact</label></td>
                            <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required class="border p-2 rounded"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">
                                <input type="submit" value="Update" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded transition-all duration-300 ease-in-out"/>
                                <input type="reset" value="Clear" class="bg-gray-400 hover:bg-gray-600 text-white font-bold py-2 px-4 rounded ml-4 transition-all duration-300 ease-in-out"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
