<?php
session_start();
//jika tidak ada session username maka akan dilarikan ke halaman index.php
if (empty($_SESSION['username'])) {
    header('location:index.php');
}
if (isset($_POST['logout'])) {
    session_destroy();
    header('location:index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>PHP Session</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initialscale=1">
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
        />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css"
            rel="stylesheet"
        />
    </head>
    <body>
    <div class="container">
        <div class="jumbotron">
            <h1>Halaman Login</h1>
            <p>Silahkan klik tombol Logout untuk kembali ke halaman login</p>
        </div>
        <form method="post"><button type="submit" class="btn btn-danger" name="logout">Logout</button></form>
    </div>
    </body>
    <!-- MDB -->
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"
    ></script>
    <!-- JQuery -->
    <script 
        src="https://code.jquery.com/jquery-3.6.0.min.js" 
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous"
    ></script>
</html>