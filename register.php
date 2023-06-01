<?php
    include 'koneksi.php';

    $server = "localhost";
    $user = "admin";
    $pass = "123456";
    $database = "sendlogs";
    
    $conn = mysqli_connect($server, $user, $pass, $database);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/register-style.css">
    <title>Sign UP</title>
</head>

<body>
    <div class="form_wrapper">
        <div class="form_container">
            <div class="title_container">
                <h2>Sign UP</h2>
            </div>
            <div class="row clearfix">
                <div class="">
                    <form action ="" method="post">
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                            <input type="text" name="username" placeholder="Username" required />
                        </div>
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
                            <input type="email" name="email" placeholder="Email" required />
                        </div>
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                            <input type="password" name="password" placeholder="Password" required />
                        </div>
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-lock"></i></span>
                            <input type="password" name="password" placeholder="Re-type Password" required />
                        </div>
                        <div class="row clearfix">
                            <div class="col_half">
                                <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                    <input type="text" name="fname" placeholder="First Name" />
                                </div>
                            </div>
                            <div class="col_half">
                                <div class="input_field"> <span><i aria-hidden="true" class="fa fa-user"></i></span>
                                    <input type="text" name="lname" placeholder="Last Name" required />
                                </div>
                            </div>
                        </div>
                        <div class="input_field radio_option">
                            <input type="radio" name="radiogroup" id="rd1" value="male">
                            <label for="rd1">Male</label>
                            <input type="radio" name="radiogroup" id="rd2" value="female">
                            <label for="rd2">Female</label>
                        </div>
                        <!-- <div class="input_field select_option">
                            <select>
                                <option>Select a language</option>
                                <option>Indonesia</option>
                                <option>Option 2</option>
                            </select>
                            <div class="select_arrow"></div>
                        </div> -->
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
                            <input type="text" name="notelp" placeholder="No. Telepon" required />
                        </div>
                        <div class="input_field"> <span><i aria-hidden="true" class="fa fa-envelope"></i></span>
                            <textarea type="text" name="alamat" placeholder="Alamat" required></textarea>
                        </div>
                        <div class="input_field checkbox_option">
                            <input type="checkbox" id="cb1">
                            <label for="cb1">I agree with terms and conditions</label>
                        </div>
                        <input class="button" type="submit" value="Register" name="submit-btn"/>
                    </form>

                    <?php
                        $username = !empty($_POST['username']) ? $_POST['username'] : '';
                        $email = !empty($_POST['email']) ? $_POST['email'] : '';
                        $password = !empty($_POST['password']) ? $_POST['password'] : '';
                        $fname = !empty($_POST['fname']) ? $_POST['fname'] : '';
                        $lname = !empty($_POST['lname']) ? $_POST['lname'] : '';
                        $genderValue = !empty($_POST['radiogroup']) ? $_POST['radiogroup'] : '';

                        if($genderValue == "male")
                        {
                            $gender = "Male";
                        }
                        else if($genderValue == "female")
                        {
                            $gender = "Female";
                        }

                        $notelp = !empty($_POST['notelp']) ? $_POST['notelp'] : '';
                        $alamat = !empty($_POST['alamat']) ? $_POST['alamat'] : '';


                        if(isset($_POST["submit-btn"]))
                        {
                            echo "<p>masuk if</p>";
                            $sqlInsert = "INSERT INTO akun (namaAkun, password, namaDepan, namaBlkg, jenisKelamin, noHP, email, alamat)  VALUES ('$username','$password','$fname','$lname','$gender','$notelp','$email','$alamat')";

                            if(mysqli_query($conn, $sqlInsert)){
                                echo "<script>document.location.href = 'login.php';</script>";
                            }
                        }
                    ?>

                    

                </div>
            </div>
        </div>
    </div>
    <section class="copyright">
        <p>
            <script> document.write(new Date().getFullYear())</script> Copyright Â©
            SendsLogs/UniPer/jakarta
        </p>
    </section>
    <script src="./script.js"></script>
</body>

</html>