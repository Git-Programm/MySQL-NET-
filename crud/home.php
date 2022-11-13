<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    <div class="container my-5">
        <button type="submit" class="btn btn-primary mb-5" name="submit"><a href="user.php" class="text-light">ADD
                USER</a></button>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Sr No</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Mobile</th>
                    <th scope="col">Password</th>
                    <th scope="col">Options</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include 'connect.php';
                $sql = "SELECT * FROM `crud`";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    $name = $row['name'];
                    $mobile = $row['mobile'];
                    $email = $row['email'];
                    $password = $row['password'];
                    $id = $row['id'];
                    echo '<tr>
                    <th scope="row">' . $id . '</th>
                    <td>' . $name . '</td>
                    <td>' . $email . '</td>
                    <td>' . $mobile . '</td>
                    <td>' . $password . '</td>
                    <td>
                        <button type="submit" class="btn btn-primary" name="update"><a href="update.php?id=' . $id . '"
                               class="text-light">Update</a></button>
                        <button type="submit" class="btn btn-danger" name="delete"><a href="delete.php?id=' . $id . '"
                               class="text-light">Delete</a></button>
                    </td>
                </tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>
</body>

</html>