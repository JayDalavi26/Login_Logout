<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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

.register-container {
    width: 400px;
    padding: 20px;
    background-color: #ffffff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.register-title {
    margin: 0 0 20px 0;
    text-align: center;
    font-size: 24px;
    color: #333;
}

.register-form {
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

.register-button {
    padding: 10px;
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

.register-button:hover {
    background-color: #218838;
}

.login-link {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
}

.login-link a {
    color: #007BFF;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}

.error-message {
    color: red;
    text-align: center;
    margin-bottom: 10px;
}
</style>
<script>
function validateForm() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirm_password").value;
    if (password !== confirmPassword) {
        document.getElementById("error-message").textContent = "Passwords do not match.";
        return false;
    }
    return true;
}
</script>
</head>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); // HTTP 1.1 for avoiding back paging in form
				
		response.setHeader("Pragma","no-cache"); // HTTP 1.0
				
		response.setHeader("Expires","0"); // Proxies
				
	%>
	<div class="register-container">
        <h1 class="register-title">Register</h1>
        <form class="register-form" action="Register" method="post" onsubmit="return validateForm()">
            <div id="error-message" class="error-message"></div>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="uname" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="pass" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input type="password" id="confirm_password" name="confirm_pass" required>
            </div>
            <button type="submit" class="register-button">Register</button>
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </div>
</body>
</html>
