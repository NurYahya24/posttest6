<?php

require 'koneksi.php';
$result = mysqli_query($conn, "SELECT * FROM tbdokter");
$tbdokter = [];

while ($row = mysqli_fetch_assoc($result)) {
    $tbdokter[] = $row;
}

include "head.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>data dokter</title>
    <link rel="stylesheet" href="dok.css">
</head>
<body>
<br><a href="input_dok.php" id="first">Tambah</a><br><br>
    <div class="table_responsive">
        <table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Foto</th>
                    <th>Nama</th>
                    <th>NIP</th>
                    <th>Spesialis</th>
                    <th>Alamat</th>
                    <th>Tanggal Input</th>
                    <th>Aksi</th>
                    
                </tr>
            </thead>

            <tbody>
                <?php $i = 1; foreach ($tbdokter as $dok):?>
                <tr>
                    <td><?php echo $i ;?></td>
                    <td><img src="../../image/<?= $dok['foto'] ?>"></td>
                    <td><?php echo $dok["nama"];?></td>
                    <td><?php echo $dok["nip"];?></td>
                    <td><?php echo $dok["spesialis"];?></td>
                    <td><?php echo $dok["alamat"];?></td>
                    <td><?php echo $dok["tanggal"];?></td>
                    <td>
                        <span class="action_btn">
                            <a href="edit.php?id=<?php echo $dok["id"]; ?>">Edit</a> 
                            <a href="hapus.php?id=<?php echo $dok["id"]; ?>" onclick = "return confirm('And yakin ingin mengahpus data ini ?')">Hapus</a>
                        </span>
                    </td>
                </tr>
                <?php $i++; endforeach;?>
            </tbody>
        </table>
    </div>
</body>
</html>

<?php

include "foot.php";

?>