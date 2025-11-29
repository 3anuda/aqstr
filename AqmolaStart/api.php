<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$servername = "localhost";
$username = "root";
$password = ''; 
$dbname = "aqmola_start";

$conn = new mysqli($servername, $username, $password, $dbname);

$type = isset($_GET['type']) ? $_GET['type'] : 'startups';

if ($type == 'events') {
    $sql = "SELECT * FROM events ORDER BY id DESC";
} elseif ($type == 'teams') {
    $sql = "SELECT * FROM teams ORDER BY id DESC";
} else {
    $sql = "SELECT * FROM startups ORDER BY id DESC";
}

$result = $conn->query($sql);
$data = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data, JSON_UNESCAPED_UNICODE);
$conn->close();
?>