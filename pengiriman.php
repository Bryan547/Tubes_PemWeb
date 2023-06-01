<?php  
    include 'koneksi.php';
    $connection = mysqli_connect("localhost:3305", "bryan", "12345", "sendlogs");
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/pengiriman.css">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet"> -->
    <title>Pengiriman Barang</title>
</head>
<body>
    <img src="./images/brown-circle.png" alt="" class="bc">

    <div class="title">
        <h3>Pengiriman</h3>
    </div>

    <div class="navbar">
        <ul>
            <li><a href="dashboard.html">Dashboard</a></li>
            <li>Pengiriman</li>
            <li><a href="invoice.html"></a> Invoice</li>
        </ul>
    </div>

    <div class="container-info">
        <div class="container-title">
            <p>Inputkan Data Pengiriman</p>
            <p>Kamu</p>
        </div>

        <div class="divider"></div>

        <form action="functions.php" method="POST">
            <div class="flex-container">
                <div class="pengirimpenerima">
                    <p>PENGIRIM</p>
                    <div class="pengirim-info">
                        <!-- <form action=""> -->
                            <div class="form-inline">
                                <div class="form-nama">
                                    <label for="nama-pengirim">Nama</label><br>
                                    <input type="text" name="namaPengirim" id="nama-pengirim"><br>
                                </div>
                                <div class="form-notelp">
                                    <label for="notelp-pengirim">No Telpon</label><br>
                                    <input type="text" name="noTelpPengirim" id="notelp-pengirim"><br>
                                </div>
                            </div>
                            <label for="alamat-pengirim">Alamat</label><br>
                            <div class="form-alamat">
                                <textarea name="alamatPengirim" id="alamat-pengirim" cols="30" rows="2"></textarea>
                            </div>
                            <div class="form-kota">
                                <label for="kota-pengirim">Kota</label>
                                <select name="kotaPengirim" id="select-kota" class="form-select">
                                <?php
                                    $sqlGetKota = "SELECT * from kota";
                                    $sqlQuery = mysqli_query($connection, $sqlGetKota);
                                    while($row = mysqli_fetch_assoc($sqlQuery))
                                    {
                                        $kota = $row['namaKota'];
                                        echo '<option class="opt" value="' . $kota . '">' . $kota . '</option>';
                                    }
                                ?>
                                </select>
                            </div>
                        <!-- </form> -->
                    </div>
                    <p>PENERIMA</p>
                    <div class="penerima-info">
                        <!-- <form action=""> -->
                            <div class="form-inline">
                                <div class="form-nama">
                                    <label for="nama-penerima">Nama</label><br>
                                    <input type="text" name="namaPenerima" id="nama-penerima"><br>
                                </div>
                                <div class="form-notelp">
                                    <label for="notelp-penerima">No Telpon</label><br>
                                    <input type="text" name="noTelpPenerima" id="notelp-penerima"><br>
                                </div>
                            </div>
                            <div class="form-alamat">
                                <label for="alamat-penerima">Alamat</label><br>
                                <textarea name="alamatPenerima" id="alamat-penerima" cols="30" rows="2"></textarea>
                            </div>
                            <!-- <div class="form-kodepos">
                                <label for="kodepos-penerima">Kode Pos</label>
                                <input type="text" name="kodepos-penerima" id="kodepos-penerima">
                            </div> -->
                            <div class="form-kota">
                                <label for="kota-penerima">Kota</label>
                                <select name="kotaPenerima" id="select-kota" class="form-select">
                                <?php
                                    $sqlGetKota = "SELECT * from kota";
                                    $sqlQuery = mysqli_query($connection, $sqlGetKota);
                                    while($row = mysqli_fetch_assoc($sqlQuery))
                                    {
                                        $kota = $row['namaKota'];
                                        echo '<option class="opt" value="' . $kota . '">' . $kota . '</option>';
                                    }
                                ?>
                                </select>
                            </div>
                        <!-- </form> -->
                    </div>
                </div>
                <div class="barang-info">
                    <p>Ket. Barang</p>
                    <div class="barang-form">
                        <!-- <form action=""> -->
                            <div class="form-inline">
                                <div class="form-nama">
                                    <label for="isibarang">Nama Barang</label><br>
                                    <input type="text" name="namaBarang" id="isibarang"><br>
                                </div>
                                <div class="form-notelp">
                                    <label for="pilpaket">Kategori Paket</label><br>
                                    <select name="kategori" id="pilpaket" class="form-select">
                                            <option class="opt" value="Pakaian">Pakaian</option>
                                            <option class="opt" value="Perhiasan">Perhiasan</option>
                                            <option class="opt" value="Surat">Surat</option>
                                            <option class="opt" value="Perlengkapan">Perlengkapan</option>
                                            <option class="opt" value="Kendaraan">Kendaraan</option>
                                            <option class="opt" value="Makanan">Makanan</option>
                                    </select>
                                    <!-- <?php
                                    // Assume that you have already connected to your database

                                    // echo "Kategori Paket:";
                                    $query = "SELECT idKategori, namaKategori FROM kategori";
                                    $result = mysqli_query($conn, $query);

                                    // echo "<form action='' method='post'>";
                                    echo "<select type='text' name='idKategori' class='form-select'>";
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo "<option value='" . $row['idKategori'] . "'>" . $row['namaKategori'] . "</option>";
                                    }
                                    echo "</select>";
                                    // echo "<input type='submit' name='submit' value='Pilih'/>";
                                    // echo "</form>";

                                    if (isset($_POST['submit'])) {
                                        $idKategori = $_POST['idKategori'];
                                        $query = "SELECT namaKategori FROM kategori WHERE idKategori = $idKategori";
                                        $result = mysqli_query($conn, $query);
                                        $row = mysqli_fetch_assoc($result);
                                        $hargaKategori = $row['hargaKategori'];
                                        // echo "Harga barang dari kategori ini: " . $harga;
                                    }
                                    // echo "<div class='form-notelp'>";
                                    // echo "<label for='hargaKategori'>Harga dari Kategori : </label>" . $hargaKategori;
                                    // echo "$hargaKategori";
                                    ?> -->
                                </div>
                            <!-- </div> -->
                        </div>
                            <div class="form-inline">
                                <div class="form-notelp">
                                    <label for="asuransi">Jumlah</label><br>
                                    <input type="text" name="jumlah" id="asuransi"><br>
                                </div>
                                <div class="form-nama">
                                    <label for="berat">Berat</label><br>
                                    <input type="text" name="berat(KG)" id="berat"><br>
                                </div>
                            </div>
                        <!-- </form> -->
                    </div>
                </div>
                <img src="./images/Brush.png" alt="" class="brush">
            </div>
            <div class="lower-btn">
                <input type="submit" name="kirim" id="kirim" class="kirim" value="Kirim">
                <button type="reset" name="reset" id="reset" class="reset">Reset</button>
            </div>
        </form>
        <?php
            $connection = mysqli_connect("localhost:3305", "bryan", "12345", "sendlogs");
            $sqlGetRute = "SELECT * from rute1";
            $result = mysqli_query($connection, $sqlGetRute);
            if ($result){
                $kotaAwal = "Padang";
                $kotaTujuan = "Serang";
                $length = mysqli_num_rows($result);
                $arrayDB = [];
                $jarakTemp = [];
                $awalTemp = [];
                $tujuanTemp =[];
                $ruteLewat = [];
                
                while ($row = mysqli_fetch_assoc($result)) {
                    $arrayDB[] = $row;
                }

                array_push($ruteLewat, $kotaAwal);
                $length = sizeof($arrayDB);
                
                for ($i=0; $i < $length; $i++) { 
                    if ($kotaAwal == $arrayDB[$i]['kotaasal']) 
                    {
                        array_push($tujuanTemp, $arrayDB[$i]['kotatujuan']);
                        array_push($jarakTemp, $arrayDB[$i]['jarak']);
                    }
                }

                function tujuanRekursif($kotaTujuan, $arrayDB, $tujuanTemp, $ruteLewat, $result, $length, $jarakTemp)
                {   
                    $check = false;
                    $tujuanTempTemp = [];
                    
                    for ($i=0; $i < sizeof($tujuanTemp); $i++) 
                    {
                        if ($kotaTujuan == $tujuanTemp[$i])
                        {   
                            array_push($ruteLewat, $tujuanTemp[$i]);
                            return $ruteLewat;
                            $check = true;
                        }
                    }

                    for ($i=0; $i < sizeof($tujuanTemp); $i++) 
                    {
                        if(!$check)
                        {
                            for ($j=0; $j < $length; $j++) 
                            { 
                                if ($tujuanTemp[$i] == $arrayDB[$j]['kotaasal'])
                                {   
                                    // echo "<br><br>";
                                    // echo "Sekarang di kota " . $tujuanTemp[$i] . "<br>";
                                    if ($arrayDB[$j]['kotatujuan'] == $kotaTujuan)
                                    {   
                                        // echo "Masuk if check <br>";
                                        array_push($ruteLewat, $tujuanTemp[$i]);
                                        array_push($ruteLewat, $arrayDB[$j]['kotatujuan']);
                                        $check = true;
                                        return $ruteLewat;
                                    }

                                    else
                                    {   
                                        // echo "Mencari tujuan melalui kota " . $arrayDB[$j]['kotatujuan'] . "<br>";
                                        array_push($tujuanTempTemp, $arrayDB[$j]['kotatujuan']);
                                    }
                                }
                            }
                        }
                    }

                    if(!$check)
                    {   
                        return tujuanRekursif($kotaTujuan, $arrayDB, $tujuanTempTemp, $ruteLewat, $result, $length, $jarakTemp);
                    }
                }
                
                $array = tujuanRekursif($kotaTujuan, $arrayDB, $tujuanTemp, $ruteLewat, $result, $length, $jarakTemp);
                $array_final = array_merge($ruteLewat, $array);
                // echo "Rute : ";
                // foreach ($array as $kota) {
                //     echo $kota . " ";
                // }
            }
            else{
                echo "ERROR: Could not able to execute $result. " . mysqli_error($connection);
            }
        ?>
    </div>
</body>
</html>
