<?php
    include 'koneksi.php';
        $namaPengirim = $_POST['namaPengirim'];
        $noTelpPengirim = $_POST['noTelpPengirim'];
        $alamatPengirim = $_POST['alamatPengirim'];
        $kotaPengirim = $_POST['kotaPengirim'];

        $namaPenerima = $_POST['namaPenerima'];
        $noTelpPenerima = $_POST['noTelpPenerima'];
        $alamatPenerima = $_POST['alamatPenerima'];
        $kotaPenerima = $_POST['kotaPenerima'];

        $namaBarang = $_POST['namaBarang'];
        $kategori = $_POST['kategori'];
        $jumlah = $_POST['jumlah'];
        $beratKG = $_POST['berat(KG)'];
 
        $host = "localhost";
        $username = "admin";
        $password = "123456";
        $dbname = "sendlogs";


        $sql1 = "INSERT INTO pengirim VALUES ('', '$namaPengirim', '$noTelpPengirim', '$alamatPengirim', '$kotaPengirim')";
        $sql2 = "INSERT INTO penerima VALUES ('', '$namaPenerima', '$noTelpPenerima', '$alamatPenerima', '$kotaPenerima')";
        $sql3 = "INSERT INTO barang VALUES ('', '$namaBarang', '$kategori', '$jumlah', '$beratKG')";
        mysqli_query($conn, $sql1);
        mysqli_query($conn, $sql2);
        mysqli_query($conn, $sql3);

        header('location: homepage-transaksi.php?sukses');
?>