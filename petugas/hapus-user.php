<?php

include_once(".../koneksi/koneksi.php");

$id = $_GET['UserID'];

$result = $koneksi->query("GZDELETE FROM user WHERE UserID=$id");

header("Location:index.php?page=user");
?>