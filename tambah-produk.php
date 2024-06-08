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
    
    <script src="https://cdn.ckeditor.com/4.24.0-lts/standard/ckeditor.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Quicksand&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">

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
                <h3>Tambah Data Produk</h3>
                <div class="box">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <Select class="input-control" name="kategori" required>
                            <option value="">--Pilih--</option>
                            <?php
                                $kategori = mysqli_query($conn, "SELECT * FROM tb_category ORDER BY category_id DESC");
                                while($r = mysqli_fetch_array($kategori)){ ?>
                            <option value="<?php echo $r['category_id']?>"><?php echo $r['category_name']?></option>

                            <?php
                                }
                            ?>
                        </Select>

                        <input type="text" name="nama" class="input-control" placeholder="Nama Produk" required>
                        <input type="text" name="harga" class="input-control" placeholder="Harga Produk" required>
                        <input type="file" name="gambar" class="input-control" required>
                        <textarea name="deskripsi" class="input-control" placeholder="Deskripsi"></textarea>
                        <Select class="input-control" name="status" required>
                            <option value="">--Pilih--</option>
                            <option value="1">Aktif</option>
                            <option value="0">Tidak Aktif</option>
                        </Select>
                        <input type="submit" name="submit" value="Submit" class="btn">
                    </form>
                    <?php
                        if(isset($_POST['submit'])){
                            // menampung inputan form
                            $kategori = $_POST['kategori'];
                            $nama = $_POST['nama'];
                            $harga = $_POST['harga'];
                            $deskripsi = $_POST['deskripsi'];
                            $status = $_POST['status'];

                            // menampung data file yang di upload
                            $filename = $_FILES['gambar']['name'];
                            $tmp_name = $_FILES['gambar']['tmp_name'];

                            $type1 = explode('.', $filename);
                            $type2 = $type1[1];

                            $newname = 'produk'.time().'.'.$type2;

                            // menampung data format file yang di izinkan
                            $tipe_diizinkan = array('jpg', 'jpeg', 'png', 'gif');

                            // validasi format file
                            if(!in_array($type2, $tipe_diizinkan)){
                                // jika format file tidak di izinkan 
                                echo '<script>alert("Format file tidak diizinkan")</script>';
                            }else {
                                // proses upload file sekaligus insert ke database
                                move_uploaded_file($tmp_name, './produk/'.$newname);

                                $insert = mysqli_query($conn, "INSERT INTO tb_product VALUES(
                                    null,
                                    '".$kategori."',
                                    '".$nama."',
                                    '".$harga."',
                                    '".$deskripsi."',
                                    '".$newname."',
                                    '".$status."',
                                    null) " );
                                    if($insert){
                                        echo '<script>alert("Simpan Data Berhasil")</script>';
                                        echo '<script>window.location="data-produk.php"</script>';
                                    }else {
                                        echo 'gagal'.mysqli_error($conn);
                                    }
                            }

                        }
                    ?>
                </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <small>Copyright &copy; 2020 - BukaWarung</small>
            </div>
        </footer>

        <script>
            CKEDITOR.replace('deskripsi');
        </script>

    </body>
</html>