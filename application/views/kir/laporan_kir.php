<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <title>Laporan KIR</title>
    <style>
        tr .spaceUnder > td {
            padding-bottom: 5em;
        }
    </style>
</head>
<body>
    <h4 style="text-align: center;">KARTU INVENTARIS RUANGAN</h4>

    <table>
        <tr>
            <td>PROVINSI</td>
            <td>:</td>
            <td>KALIMANTAN SELATAN</td>
        </tr>
        <tr>
            <td>UPB</td>
            <td>:</td>
            <td>UPPD PELAIHARI</td>
        </tr>
        <tr>
            <td>RUANGAN</td>
            <td>:</td>
            <td>xxxxxxxxxxxxxxxxxxxxxx</td>
    </table>

    <br>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Kode Barang</th>
                <th scope="col">Jenis Barang / Nama Barang</th>
                <th scope="col">Merk / Type</th>
                <th scope="col">Ukuran / CC </th>
                <th scope="col">Thn Beli</th>
                <th scope="col">Jumlah</th>
                <th scope="col">Keterangan</th>
            </tr>
            <tr>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
            </tr>
        </thead>
        <tbody>
            <?php $no = 1; foreach ($laporanKir as $kir) { ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $kir['kode_barang'] ?></td>
                    <td><?= $kir['nama_barang'] ?></td>
                    <td><?= $kir['merk'] ?></td>
                    <td><?= $kir['ukuran'] ?></td>
                    <td><?= $kir['tahun_pembelian'] ?></td>
                    <td></td>
                    <td><?= $kir['keterangan'] ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>

    <br><br>
    <table class="table">
        <tbody>
            <tr>
                <td colspan="3" style="text-align: right;">Pelaihari, XXXXX</td>
            </tr>
            <tr>
                <td colspan="3">Mengetahui:</td>
            </tr>
            <tr class="spaceUnder">
                <td>KEPALA UPPD PELAIHARI</td>
                <td><br></td>
                <td>PENGELOLA PEMANFAATAN BARANG MILIK DAERAH</td>
            </tr>
            <tr>
                <td>Drs. FAJAR GEMILANG, M. Si</td>
                <td><br></td>
                <td>FARIDA ARIYANI</td>
            </tr>
            <tr>
                <td>NIP. 19661126 199310 1 001</td>
                <td><br></td>
                <td>NIP. 19760228 200701 2 012</td>
            </tr>
        </tbody>
    </table>
</body>
</html>