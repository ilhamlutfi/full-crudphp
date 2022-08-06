<?php

session_start();

// membatasi halaman sebelum login
if (!isset($_SESSION["login"])) {
    echo "<script>
            alert('login dulu dong');
            document.location.href = 'login.php';
          </script>";
    exit;
}

$title = 'Detail Mahasiswa';

include 'layout/header.php';

// mengambil id mahasiswa dari url
$id_mahasiswa = (int)$_GET['id_mahasiswa'];

// menampilkan data mahasiswa
$mahasiswa = select("SELECT * FROM mahasiswa WHERE id_mahasiswa = $id_mahasiswa")[0];

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">
                        <ia class="fas fa-user"></ia> Detail Mahasiswa : <?= $mahasiswa['nama']; ?>
                    </h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="mahasiswa.php">Data Mahasiswa</a></li>
                        <li class="breadcrumb-item active">Detail Mahasiswa</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 mb-5">
                    <table class="table table-bordered table-striped mt-3">
                        <tr>
                            <td>Nama</td>
                            <td>: <?= $mahasiswa['nama']; ?></td>
                        </tr>

                        <tr>
                            <td>Program Studi</td>
                            <td>: <?= $mahasiswa['prodi']; ?></td>
                        </tr>

                        <tr>
                            <td>Jenis Kelamin</td>
                            <td>: <?= $mahasiswa['jk']; ?></td>
                        </tr>

                        <tr>
                            <td>Telepon</td>
                            <td>: <?= $mahasiswa['telepon']; ?></td>
                        </tr>

                        <tr>
                            <td>Alamat</td>
                            <td>: <?= $mahasiswa['alamat']; ?></td>
                        </tr>

                        <tr>
                            <td>Email</td>
                            <td>: <?= $mahasiswa['email']; ?></td>
                        </tr>

                        <tr>
                            <td width="50%">Foto</td>
                            <td>
                                <a href="assets-template/img/<?= $mahasiswa['foto']; ?>">
                                    <img src="assets-template/img/<?= $mahasiswa['foto']; ?>" alt="foto" width="50%">
                                </a>
                            </td>
                        </tr>
                    </table>

                    <a href="mahasiswa.php" class="btn btn-secondary btn-sm" style="float: right ;">Kembali</a>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>

<?php include 'layout/footer.php'; ?>
