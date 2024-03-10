<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Assignment";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
function register_user($username, $email, $phone, $password) {
    global $conn;

    $hashed_password = password_hash($password, PASSWORD_BCRYPT);

    $sql = "INSERT INTO users (username, email, phone, password) VALUES ('$username', '$email', '$phone', '$hashed_password')";
    return mysqli_query($conn, $sql);
}
function login_user($username, $password) {
    global $conn;

    $sql = "SELECT id, username, password FROM users WHERE username = '$username'";
    $result = mysqli_query($conn, $sql);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row['password'])) {
            return $row;
        }
    }

    return null;
}

function get_users() {
    global $conn;

    $sql = "SELECT id, username , email, phone FROM users";
    $result = mysqli_query($conn, $sql);

    $users = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $users[] = $row;
    }

    return $users;
}
