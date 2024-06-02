

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Update Freelancer Profile</title>
</head>
<body>
    <h1>Update Freelancer Profile</h1>
    <c:if test="${not empty freelancer}">
        <form action="updateProfile" method="post">
            <input type="hidden" name="freelanceID" value="${Freelancer.freelanceID}" />
            <p>First Name: <input type="text" name="first_name" value="${Freelancer.first_name}" /></p>
            <p>Last Name: <input type="text" name="last_name" value="${Freelancer.last_name}" /></p>
            <p>Image: <input type="text" name="image" value="${Freelancer.image}" /></p>
            <p>Gender: 
                <select name="gender">
                    <option value="true" ${Freelancer.gender ? 'selected' : ''}>Male</option>
                    <option value="false" ${!Freelancer.gender ? 'selected' : ''}>Female</option>
                </select>
            </p>
            <p>Date of Birth: <input type="date" name="dob" value="${Freelancer.dob}" /></p>
            <p>Description: <input type="text" name="describe" value="${Freelancer.describe}" /></p>
            <p>Email: <input type="email" name="email" value="${Freelancer.email}" /></p>
            <p>Phone: <input type="text" name="phone" value="${Freelancer.phone}" /></p>
            <p><input type="submit" value="Update" /></p>
        </form>
    </c:if>
    <c:if test="${empty freelancer}">
        <p>Freelancer not found.</p>
    </c:if>
</body>
</html>
