<?php
$host = 'localhost';
$dbname = 'edukasi_online';
$username = 'root'; // Sesuaikan dengan username MySQL Anda
$password = ''; // Sesuaikan dengan password MySQL Anda

try {
    $koneksi = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    $koneksi->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Koneksi gagal: " . $e->getMessage());
}
?>
