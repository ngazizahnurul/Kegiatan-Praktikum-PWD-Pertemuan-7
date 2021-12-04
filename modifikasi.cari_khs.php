<?php
    include 'koneksi.php';
?>
<h3>Form Pencarian Dengan PHP MAHASISWA</h3>
<form action="" method="get">
    <label>Cari :</label>
    <input type="text" name="cari"> 
    <input type="submit" value="Cari">
</form>
<?php
    if(isset($_GET['cari'])){
    $cari = $_GET['cari'];
    echo "<b>Hasil pencarian : ".$cari."</b>";
    }
?>
<table border="1">
<tr>
    <th>NIM</th>
    <th>Nama Mahasiswa</th>
    <th>Daftar KodeMK</th>
    <th>Nama Matakuliah</th>
    <th>Nilai</th>
</tr>
<?php if(isset($_GET['cari'])){
    $cari = $_GET['cari'];
    $sql="SELECT khs.daftar_kodeMK, mahasiswa.nama_mahasiswa, matakuliah.nama_mk, mahasiswa.NNIM, khs.nilai
    FROM mahasiswa left join khs on mahasiswa.NIM = khs.NIM
    left join matakuliah on matakuliah.kode = khs.daftar_odeMK WHERE mahasiswa.NIM ='$cari'";
    $tampil = mysqli_query($con,$sql);
    }else{
    $sql="SELECT khs.daftar_kodeMK, mahasiswa.nama_mahasiswa, matakuliah.nama_mk, mahasiswa.NNIM, khs.nilai
    FROM mahasiswa left join khs on mahasiswa.NIM = khs.NIM
    left join matakuliah on matakuliah.kode = khs.daftar_odeMK WHERE mahasiswa.NIM ='$cari'";
    $tampil = mysqli_query($con,$sql);
    }
    $no = 1;
    while($r = mysqli_fetch_array($tampil)){
?>
<tr>
<td><?php echo $r['NIM']; ?></td>
<td><?php echo $r['nama_mahasiswa']; ?></td>
<td><?php echo $r['daftar_kodeMK']; ?></td>
<td><?php echo $r['nama_mk']; ?></td>
<td><?php echo $r['nilai']; ?></td>
</tr>
<?php } ?>
</table>