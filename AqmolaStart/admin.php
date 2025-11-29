<?php
$servername = "localhost";
$username = "root";
$password = ''; 
$dbname = "aqmola_start";

$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['add_event'])) {
        $title = $_POST['title'];
        $date = $_POST['date'];
        $desc = $_POST['desc'];
        $conn->query("INSERT INTO events (title, date_event, description) VALUES ('$title', '$date', '$desc')");
    }
}
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Админка Aqmola</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-4 bg-light">
    <div class="container bg-white p-4 rounded shadow">
        <h1>Панель управления</h1>
        <hr>
        
        <h3>Добавить мероприятие</h3>
        <form method="POST" class="mb-4">
            <input type="text" name="title" class="form-control mb-2" placeholder="Название события" required>
            <input type="text" name="date" class="form-control mb-2" placeholder="Дата (например: 10 Декабря)" required>
            <textarea name="desc" class="form-control mb-2" placeholder="Описание"></textarea>
            <button type="submit" name="add_event" class="btn btn-success">Добавить в базу</button>
        </form>

        <hr>
        <h3>Текущие мероприятия (Live Preview)</h3>
        <ul class="list-group">
            <?php
            $res = $conn->query("SELECT * FROM events ORDER BY id DESC");
            while($row = $res->fetch_assoc()) {
                echo "<li class='list-group-item'><b>{$row['date_event']}</b>: {$row['title']}</li>";
            }
            ?>
        </ul>
        <br>
        <a href="index.html" class="btn btn-outline-primary">Вернуться на сайт</a>
    </div>
</body>
</html>