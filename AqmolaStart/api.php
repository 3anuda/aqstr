<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$servername = "localhost";
$username = "root";
$password = ''; 
$dbname = "aqmola_start";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

$conn->set_charset("utf8");

$sql = "SELECT * FROM startups ORDER BY id DESC";
$result = $conn->query($sql);

$projects = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $projects[] = $row;
    }
}

echo json_encode($projects, JSON_UNESCAPED_UNICODE);

$conn->close();
?>