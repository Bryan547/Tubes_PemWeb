<?php 
 
session_start();
 
if (!isset($_SESSION['username'])) {
    header("Location: home.php");
}
 
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
  <title>Sendlogs</title>
</head>

<body>
  <section class="navigation">
    <div class="nav-container">
      <div class="brand">
        <img src="./images/logo.png" class="logo" alt="logo">
      </div>
      <nav>
        <div class="nav-mobile"><a id="nav-toggle" href="#!"></a></div>
        <ul class="nav-list">
          <li>
            <a href="#!">Home</a>
          </li>
          <li>
            <a href="#!">Pricing</a>
          </li>
          <li>
            <a href="#!">Service</a>
          </li>
          <li>
            <a href="#!">Blog</a>
          </li>
          <li>
            <a href="#!">Contact</a>
          </li>
          <li>
            <a href="logout.php">Logout</a>
          </li>
        </ul>
      </nav>
    </div>
  </section>
  
  <!-- copyright -->
  <section class="copyright">
    <p><script> document.write(new Date().getFullYear())</script> Copyright © 
    SendsLogs/UniPer/jakarta</p>
  </section>
  <script src="./script.js"></script>
</body>

</html>