<?php
include 'koneksi.php';

$query = $koneksi->prepare("SELECT * FROM kursus ORDER BY tanggal_dibuat DESC");
$query->execute();

$kursus = $query->fetchAll(PDO::FETCH_ASSOC);
