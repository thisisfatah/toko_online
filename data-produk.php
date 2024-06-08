<?php
    session_start();
    include 'db.php';
    if($_SESSION['status_login'] != true){
        echo '<script>window.location="login.php"</script>';
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BukaWarung</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Quicksand&display=swap" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Header -->
    <header>
        <div class="container">
            <h1><a href="dashboard.php">BukaWarung</a></h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
                <li><a href="profile.php">Profil</a></li>
                <li><a href="data-kategori.php">Data kategori</a></li>
                <li><a href="data-produk.php">Data Produk</a></li>
                <li><a href="logout.php">Keluar</a></li>
            </ul>
        </div>
    </header>

    <!-- Content -->
    <section>
        <div class="container">
            <h3>Data Produk</h3>
            <div class="box">
            <p><a href="tambah-produk.php" class="btn">Tambah Data</a></p>
                <table border="1" cellspacing="0" class="table">
                    <thead>
                        <tr>
                            <th width="60px">No</th>
                            <th>kategori</th>
                            <th>Nama Produk</th>
                            <th>harga</th>
                            <th>Gambar</th>
                            <th>Status</th>
                            <th width="150px">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no = 1;
                            $produk = mysqli_query($conn, "SELECT * FROM tb_product LEFT JOIN tb_category USING (category_id) ORDER BY product_id DESC");
                            if(mysqli_num_rows($produk) > 0){
                                while($row = mysqli_fetch_array($produk)) {
                                    ?>
                                <tr>
                                    <td><?php echo $no++?></td>
                                    <td><?php echo $row['category_name']?></td>
                                    <td><?php echo $row['product_name']?></td>
                                    <td>Rp. <?php echo number_format($row['product_price'])?></td>
                                    <td><a href="produk/<?php echo $row['product_image']?>" target="_blank"><img src="produk/<?php echo $row['product_image']?>" alt="" width="50px"></a></td>
                                    <td><?php echo ($row['product_status'] == 0) ? 'Tidak Aktif' : 'Aktif' ?></td>
                                    <td>
                                        <a href="edit-produk.php?id=<?php echo $row['product_id']?>">Edit</a> || 
                                        <a href="proses-hapus.php?idp=<?php echo $row['product_id']?>" onclick="return confirm('Yakin ingin hapus?')">Hapus</a>
                                    </td>
                                </tr>
                                <?php
                                } 
                            }else { ?>
                                <tr>
                                    <td colspan="8">Tidak ada data</td>
                                </tr>
                                <?php }
                                ?>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2020 - BukaWarung</small>
        </div>
    </footer>
</body>

</html>