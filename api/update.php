<?php

// render halaman menjadi json
header('Content-Type: application/json');

require '../config/app.php';

// parse_str(file_get_contents('php://input'), $put);
$put = (array)json_decode(file_get_contents('php://input'));

$id_barang  = $put['id_barang'];
$nama       = $put['nama'];
$jumlah     = $put['jumlah'];
$harga      = $put['harga'];
$barcode    = $put['barcode'];

// validasi data
if ($nama == null) {
    echo json_encode(['pesan' => 'Nama Barang Tidak Boleh Kosong']);
    exit;
}

// query tambah data
$query = "UPDATE barang SET nama = '$nama', jumlah = '$jumlah', harga = '$harga', barcode = '$barcode' WHERE id_barang = $id_barang";
mysqli_query($db, $query);

// check status data
if ($query) {
    echo json_encode(['pesan' => 'Data Barang Berhasil Diubah']);
} else {
    echo json_encode(['pesan' => 'Data Barang Gagal Diubah']);
}
