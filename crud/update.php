<?php
include 'connect.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM `crud` WHERE $id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $name = $row['name'];
    $mobile = $row['mobile'];
    $email = $row['email'];
    $password = $row['password'];
}
if (isset($_POST['update'])) {
    $uid = $_POST['id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $password = $_POST['password'];

    $sql = "UPDATE `crud` SET `id` = '$uid', `name` = '$name', `email` = '$email', `mobile` = '$mobile', `password` = '$password' WHERE `crud`.`id` = $id;";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die(mysqli_error($conn));
    }
    header("location:home.php");
}


?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>USER</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    <div class="container my-5">
        <form method="post">
            <div class="mb-3">
                <label for="id" class="form-label">Id</label>
                <?php
                echo '<input type="text" class="form-control" id="id" name="id" value="' . $id . '">';
                ?>

            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <?php
                echo '<input type="text" class="form-control" id="name" name="name" value="' . $name . '">';
                ?>

            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <?php
                echo '<input type="email" class="form-control" id="email" name="email" value="' . $email . '">';
                ?>

            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile</label>
                <?php
                echo '<input type="phone" class="form-control" id="mobile" name="mobile" value="' . $mobile . '">';
                ?>

            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <?php
                echo '<input type="password" class="form-control" id="password" name="password" value="' . $password . '">';
                ?>

            </div>
            <button type="submit" class="btn btn-primary" name="update">Update</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>
</body>

</html>