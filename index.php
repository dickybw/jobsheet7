<?php 
$link = mysqli_connect(
    'localhost',
    'user_peternakan',
    '#user_peternakan#',
    'peternakan_ayam'
);
if( isset($_POST["login"]) ) {

	$username = $_POST["username"];
	$password = $_POST["pass"];

	$result = mysqli_query($link, "SELECT * FROM user WHERE username = '$username'");

	// cek username
	if( mysqli_num_rows($result) === 1 ) {

		// cek password
		$row = mysqli_fetch_assoc($result);
		if( password_verify($password, $row["pass"]) ) {
			header("Location: tabel.php");
			exit;
		}
	}

	$error = true;

}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Login</title>
</head>
<body>
<?php if( isset($error) ) : ?>
	<p style="color: red; font-style: italic;">username / password salah</p>
<?php endif; ?>


<form action="" method="post">

	<ul>
		<li>
			<label for="username">Username :</label>
			<input type="text" name="username" id="username">
		</li>
		<li>
			<label for="pass">Password :</label>
			<input type="password" name="pass" id="pass">
		</li>
		<li>
			<button type="submit" name="login">Login</button>
		</li>
	</ul>
	
</form>







</body>
</html>