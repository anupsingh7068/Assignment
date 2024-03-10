<?php
require_once 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['register'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $password = $_POST['password'];

    if (register_user($username, $email, $phone, $password)) {
        echo '<p class="success">Registration successful. Please log in.</p>';
    } else {
        echo '<p class="error">Registration failed. Please try again.</p>';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>PHP Auth App</title>
</head>
<body>

<div class="container">
    <h2>Register</h2>
    <form method="post" action="index.php">
        <label for="username">Username:</label>
        <input type="text" name="username" required>

        <label for="email">Email:</label>
        <input type="email" name="email" required>

        <label for="phone">Phone:</label>
        <input type="tel" name="phone" required>

        <label for="password">Password:</label>
        <input type="password" name="password" required>

        <button type="submit" name="register">Register</button>
    </form>

    <p>Already have an account? <a href="login.php">Login here</a>.</p>
</div>

</body>
</html>
