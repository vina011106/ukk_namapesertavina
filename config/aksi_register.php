<?php
include'koneksi.php';

$username = $_POST['username'];
$password = md5($_POST['password']);
$Email =$_POST['email'];
$namaLengkap = $_POST['namalengkap'];
$alamat = $_POST['alamat'];

$sql = mysqli_query($koneksi, "INSERT INTO user VALUES ('','$username','$password','$email','$namalengkap','$alamat')");

if ($sql) {
echo "<script>
alert('pendaftaran akun berhasil');
location.href='../login.php';
</script>";
}

?>