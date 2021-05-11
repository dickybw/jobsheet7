<?php 
$link = mysqli_connect(
    'localhost',
    'user_peternakan',
    '#user_peternakan#',
    'peternakan_ayam'
);

function query($query) {
	global $link;
	$result = mysqli_query($link, $query);
	$rows = [];
	while( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}
	return $rows;
}
$ternak = query("SELECT * FROM kondisi_kandang");

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Admin</title>
</head>
<body>

<br>
<table border="1" cellpadding="10" cellspacing="0">

	<tr>
		<th>id.</th>
		<th>kd_peternak</th>
		<th>tanggal</th>
		<th>waktu</th>
		<th>suhu_1</th>
		<th>kelembapan_1</th>
		<th>suhu_2</th>
        <th>kelembapan_2</th>
        <th>suhu_3</th>
        <th>kelembapan_3</th>
        <th>jumlah ayam</th>
		<th>foto ayam</th>
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $ternak as $row ) : ?>
	<tr>
        <td><?= $i; ?></td>
        <td><?= $row["kd_peternak"]; ?></td>
		<td><?= $row["tgl"]; ?></td>
		<td><?= $row["waktu"]; ?></td>
        <td><?= $row["suhu_1"]; ?></td>
		<td><?= $row["kelembapan_1"]; ?></td>
		<td><?= $row["suhu_2"]; ?></td>
		<td><?= $row["kelembapan_2"]; ?></td>
        <td><?= $row["suhu_3"]; ?></td>
		<td><?= $row["kelembapan_3"]; ?></td>
		<td><?= $row["jml_ayam"]; ?></td>
		<td><?= $row["foto_ayam"]; ?></td>
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>

</body>
</html>