<?php
include 'koneksi.php';
$query = mysqli_query($conn,"SELECT * FROM barang ORDER BY idBarang DESC");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/homapage-transaksi-style.css">
    <link rel="shortcut icon" href="./images/logo.png">
    <title>Transaksi | Sendlogs</title>
</head>
<body>
    <div class="nav-container">
        <nav>
            <div class="nav-mobile"><a id="nav-toggle" href="#!"></a></div>
            <ul class="nav-list">
                <li>
                    <a href="homepage-dashboard.html">Home</a>
                </li>
                <li>
                    <a href="https://wa.link/e4rxht">Laporan</a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="container">
        <div class="title">
            <h3>
                Transaksi
            </h3>
            <img src="./images/brown-circle.png" alt="brown-circle" class="bc">
        </div>
        <div class="container-hero">
            <img src="./images/treasure.png" alt="treasure" class="treasure">
            <div class="content-hero">
                <div class="title-hero">
                    <h3>Transaksi Anda</h3>
                </div>
                <table border="1" cellpadding="10" cellspacing="0">
                    <tr>
                        <td>No</td>
                        <td>Nama Barang</td>
                        <td>Jumlah Barang</td>
                        <td>Berat Barang</td>
                        <td>Kategori Barang</td>
                        <!-- <td>Action</td> -->
                    </tr>
                    <?php if(mysqli_num_rows($query)>0){ ?>
                    <?php
                        $no = 1;
                        while($data = mysqli_fetch_array($query)){
                    ?>
                    <tr>
                        <td><?php echo $no ?></td>
                        <td><?php echo $data["namaBarang"];?></td>
                        <td><?php echo $data["jumlah"];?></td>
                        <td><?php echo $data["berat(KG)"];?></td>
                        <td><?php echo $data["kategori"];?></td>
                        <!-- <td>
                        <form action="" method="POST">
                            <input type="submit" name="hitung" id="hitung" value="Hitung">
                        </form>
                        </td> -->
                    </tr>
                    <?php $no++; } ?>
                    <?php } ?>
                </table>
                <h2>Hasil :</h2>
                        <?php
                            // perintah tampil data
                            $q = mysqli_query($conn, "SELECT * FROM barang");
                            
                            $total = 0;
                            $tot_bayar = 0;
                            $no = 1;

                            while ($r = $q->fetch_assoc()) {
                            $total = $r['berat(KG)'] * $r['jumlah'];
                            $tot_bayar += $total;
                        ?>
                        <table border="1" cellpadding="10" cellspacing="0">
                        <tr>
                        <td>No</td>
                        <td>Nama Barang</td>
                        <td>Jumlah Barang</td>
                        <td>Berat Barang</td>
                        <td>Kategori Barang</td>
                        <td>Harga</td>
                        </tr>
                        <tr>
                        <td><?= $no++ ?></td>
                        <td><?= ucwords($r['namaBarang']) ?></td>
                        <td><?= $r['jumlah'] ?></td>
                        <td><?= $r['berat(KG)'] ?></td>
                        <td><?= $r['kategori'] ?></td>
                        <td><?= $total ?></td>
                        </tr>

                        <?php   
                        }
                        ?>

                        <tr>
                        <th colspan="5">Total Bayar</th>
                        <th><?= $tot_bayar ?></th>
                        </tr>
                        </table>
                <p>
                    Berikut adalah laporan transaksi anda selama menggunakan layanan kami.
                    <br>
                    Semoga anda lebih sering menggunakan layanan kami!
                </p>
            </div>
        </div>
    </div>
</body>

</html>