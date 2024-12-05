<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Employee Status</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-to-r from-red-400 via-orange-400 via-yellow-400 via-green-400 via-blue-400 to-purple-400 font-sans flex flex-col min-h-screen">

    <%@include file="adminnavbar.jsp" %>

    <!-- Page Content -->
    <div class="flex-1 p-6 mt-16">
        <div class="w-full max-w-6xl mx-auto bg-white rounded-lg shadow-lg p-6">
            <h3 class="text-center text-2xl font-bold underline mb-4">Update Employee Status</h3>

            <div class="overflow-x-auto">
                <table class="min-w-full border-collapse">
                    <thead>
                        <tr class="bg-black text-white">
                            <th class="border border-black p-2">ID</th>
                            <th class="border border-black p-2">NAME</th>
                            <th class="border border-black p-2">GENDER</th>
                            <th class="border border-black p-2">DATE OF BIRTH</th>
                            <th class="border border-black p-2">DEPARTMENT</th>
                            <th class="border border-black p-2">SALARY</th>
                            <th class="border border-black p-2">LOCATION</th>
                            <th class="border border-black p-2">EMAIL</th>
                            <th class="border border-black p-2">CONTACT</th>
                            <th class="border border-black p-2">STATUS</th>
                            <th class="border border-black p-2">ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${emplist}" var="emp">
                            <tr class="border-b border-gray-300 hover:bg-gray-200 transition-colors duration-300">
                                <td class="border border-black p-2"><c:out value="${emp.id}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.name}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.gender}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.dateofbirth}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.department}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.salary}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.location}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.email}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.contact}"/></td>
                                <td class="border border-black p-2"><c:out value="${emp.status}"/></td>
                                <td class="border border-black p-2">
                                    <a href='<c:url value="updatestatus?id=${emp.id}&status=Accepted"></c:url>' class="text-green-600 hover:underline">Accept</a> |
                                    <a href='<c:url value="updatestatus?id=${emp.id}&status=Rejected"></c:url>' class="text-red-600 hover:underline">Reject</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>