<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $kata_sandi = $_POST['kata_sandi'];

    $query = $koneksi->prepare("SELECT * FROM pengguna WHERE email = :email");
    $query->bindParam(':email', $email);
    $query->execute();

    $user = $query->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($kata_sandi, $user['kata_sandi'])) {
        session_start();
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['user_name'] = $user['nama'];
        echo "Login berhasil!";
        // Redirect atau tampilkan pesan berhasil
    } else {
        echo "Email atau kata sandi salah!";
        // Redirect atau tampilkan pesan kesalahan
    }
}
?>
