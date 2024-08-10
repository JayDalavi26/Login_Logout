<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body {
    margin: 0;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f7f7f7;
}

.login-container {
    width: 400px;
    padding: 20px;
    background-color: #ffffff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.login-title {
    margin: 0 0 20px 0;
    text-align: center;
    font-size: 24px;
    color: #333;
}

.login-form {
    display: flex;
    flex-direction: column;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 16px;
}

.login-button {
    padding: 10px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

.login-button:hover {
    background-color: #0056b3;
}

.register-link {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
}

.register-link a {
    color: #007BFF;
    text-decoration: none;
}

.register-link a:hover {
    text-decoration: underline;
}

.error-message
{
	 color: red;
     text-align: center;
     margin-top: 0px;
}

</style>
</head>
<body>

	 <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
		        %>
		        <div class="error-message"><%= errorMessage %></div>
		        <%
            }
      %>

	<div class="login-container">
        <h1 class="login-title">Login</h1>
        <form class="login-form" action="Login" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="uname" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="pass" required>
            </div>
            <button type="submit" class="login-button">Login</button>
        </form>
        <div class="register-link">
            <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
        </div>
    </div>
</body>
</html>
