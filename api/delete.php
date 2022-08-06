<?php

// render halaman menjadi json
header('Content-Type: application/json');

require '../config/app.php';

// menerima request put/delete
parse_str(file_get_contents('php://input'), $delete);

// menerima input id data yang akan dihapus
$id_barang = $delete['id_barang'];

// query hapus data
$query = "DELETE FROM barang WHERE id_barang = $id_barang";
mysqli_query($db, $query);

// check status data
if ($query) {
    echo json_encode(['pesan' => 'Data Barang Berhasil Dihapus']);
} else {
    echo json_encode(['pesan' => 'Data Barang Gagal Dihapus']);
}
