<?php
session_start();
include "../koneksi/koneksi.php";

$User = $_SESSION['Username'];
$level = $_SESSION['Level'];
if ($_SESSION['Username']=="") {
  header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>KASIR</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../assets/bootstrap-5.3.2-dist/bootstrap.min.css">
    <script src="../bootstrap-5.3.2-dist/jquery.min.js"></script>
    <script src="../bootstrap-5.3.2-dist/bootstrap.min.js"></script>
    <style>
        .row.content {height: 850px}
        .sidenav {
            background-color: #f1f1f1;
            height: 100%;
        }
        @media screen and (max-width: 767px) {
        .row.content {height: auto;} 
        }
    </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2><?php echo $level ?></h2>
      <ul class="nav nav-pills nav-stacked">
        <li <?php if(isset($_GET['page']) && $_GET['page'] == 'dashboard') echo 'class="active"'; ?>><a href="?page=dashboard">Dashboard</a></li>
        <li <?php if(isset($_GET['page']) && $_GET['page'] == 'stok') echo 'class="active"'; ?>><a href="?page=stok">Stok</a></li>
        <li <?php if(isset($_GET['page']) && $_GET['page'] == 'user') echo 'class="active"'; ?>><a href="?page=user">User</a></li>
        <li><a href="logout.php">Log Out</a></li>
      </ul><br>
    </div>
    <br>
    
    <div class="col-sm-9">
    <?php
            if (isset($_GET['page'])) {
                $laman = $_GET['page'];

                switch ($laman) {
                    case 'user':
                        include "user.php";
                        break;
                    case 'tambah-user':
                        include "tambah-user.php";
                        break;
                    case 'edit-user':
                        include "edit-user.php";
                        break;
                    case 'hapus-user':
                        include "hapus-user.php";
                        break;

                    case 'stok':
                        include "stok-barang.php";
                        break;
                    case 'tambah-produk':
                        include "tambah-produk.php";
                        break;
                    case 'edit-produk':
                        include "edit-produk.php";
                        break;
                    case 'hapus-produk':
                        include "hapus-produk.php";
                        break;
                    case 'dashboard':
                        include "dashboard.php";
                        break;

                    case 'logout':
                        include "logout.php";
                        break;
                    default:
                        # code...
                        break;
                }
            }
            else {
                include "dashboard.php";
            }
        ?>
     </div>
  </div>
</div>

</body>
</html>