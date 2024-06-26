<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $kata_sandi = password_hash($_POST['kata_sandi'], PASSWORD_DEFAULT);

    $query = $koneksi->prepare("INSERT INTO pengguna (nama, email, kata_sandi) VALUES (:nama, :email, :kata_sandi)");
    $query->bindParam(':nama', $nama);
    $query->bindParam(':email', $email);
    $query->bindParam(':kata_sandi', $kata_sandi);

    if ($query->execute()) {
        echo "Pendaftaran berhasil!";
    } else {
        echo "Pendaftaran gagal!";
    }
}
?>
