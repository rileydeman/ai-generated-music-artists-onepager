<?php
// db.php
$config = parse_ini_file($_SERVER["DOCUMENT_ROOT"] . '/config.ini');
$host = $config['host'];
$username = $config['username'];
$password = $config['password'];
$dbname = $config['dbname'];

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
?>
