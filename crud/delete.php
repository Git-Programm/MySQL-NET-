<?php

include 'connect.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM crud WHERE `crud`.`id` = $id";
    $result = mysqli_query($conn, $sql);
    if (!$result) {
        die(mysqli_error($conn));
    }
    header("location:home.php");
}