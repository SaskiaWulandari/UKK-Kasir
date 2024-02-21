<?php
 
if(isset($_POST['update'])) {	
	$id = $_GET['ProdukID'];
    $name = $_POST['NamaProduk'];
    $harga = $_POST['Harga'];
    $stok = $_POST['Stok'];
    $result = $koneksi->query("UPDATE produk SET NamaProduk='$name', Harga='$harga', Stok='$stok' WHERE ProdukID=$id");
	
	header("Location: index.php?page=stok");
    echo "<script>alert('berhasil')</script>";
}


$id = $_GET['ProdukID'];

$result1 = $koneksi->query("SELECT * FROM produk WHERE ProdukID=$id");
 
while($barang_data = mysqli_fetch_array($result1))
{
	$namaproduk = $barang_data['NamaProduk'];
	$harga = $barang_data['Harga'];
    $stok = $barang_data['Stok'];
    
}
?>

<div class="row well">
        <div class="col-md-4">
            <div class="card well">
                <div class="card-header">
                    <h3 class="">Edit Barang</h3>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        
                        <div class="mb-3 mt-3">
                            <label for="nama" class="form-label">Nama:</label>
                            <input type="text" class="form-control" id="NamE" value="<?php echo $namaproduk; ?>" placeholder="Enter Name" name="NamaProduk">
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="harga" class="form-label">harga:</label>
                            <input type="text" class="form-control" id="Harga" value="<?php echo $harga; ?>" placeholder="harga" name="Harga">
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="stok" class="form-label">stok:</label>
                            <input type="text" class="form-control" id="Stok" value="<?php echo $stok; ?>" placeholder="stok" name="Stok">
                        </div>
                        <button type="submit" name="update" class="btn btn-primary">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>