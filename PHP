<?php
$servername="localhost";
$username="root";
$password="";
$dbname="phpcrud";
$link=mysqli_connect($servername,$username,$password,$dbname);
$con=mysqli_select_db($link,$dbname);

if($con)
{
    echo("connection ok");
}
else
{
    die("connection failed because".mysqli_connect_error());

}
?>

<html>
    <head><title>database operation </title></head>
    <body>
        <form name="form1" action="" method="post">
<table>
    <tr>
    <td>enter id</td>
    <td><input type="int" name="id"></td>
    </tr>
    <tr>
    <td>enter name</td>
    <td><input type="text" name="name"></td>
    </tr>
    <tr>
    <td>enter email</td>
    <td><input type="email" name="email"></td>
    </tr>
    <tr>
    <td>enter mobile</td>
    <td><input type="int" name="mobile"></td>
    </tr>
    <tr>
    <td>enter password</td>
    <td><input type="int" name="password"></td>
    </tr>
    <tr>
<td colspan="2" align="center">
    <input type="submit" name="submit1" value="insert">
    <input type="submit" name="submit2" value="delete">
    <input type="submit" name="submit3" value="update">
    <input type="submit" name="submit4" value="display">
    <input type="submit" name="submit5" value="search">
</td>
    </tr>
</table>
</form>
</body>
</html>

<?php
if(isset($_POST["submit1"]))
{
    mysqli_query($link,"insert into crud values('$_POST[id]','$_POST[name]','$_POST[email]','$_POST[mobile]','$_POST[password]')");
    echo"Record inserted successfully";
}
if(isset($_POST["submit2"]))
{
    mysqli_query($link,"delete from crud where id='$_POST[id]'");

    echo"Record deleted successfully";
}
if(isset($_POST["submit3"]))
{
    mysqli_query($link,"update crud set name='$_POST[name]' , email='$_POST[email]' , mobile='$_POST[mobile]' , password='$_POST[password]' where id='$_POST[id]'");
}
if(isset($_POST["submit4"]))
{
    $res=mysqli_query($link,"select * from crud");
    echo"<table border=1>";
    echo"<tr>";
    echo"<th>"; echo"id"; echo"</th>";
    echo"<th>"; echo"name"; echo"</th>";
    echo"<th>"; echo"email"; echo"</th>";
    echo"<th>"; echo"mobile"; echo"</th>";
    echo"<th>"; echo"password"; echo"</th>";
    echo"</tr>";
while($row=mysqli_fetch_array($res))
{
    echo"<tr>";
    echo"<td>"; echo $row["id"]; echo"</td>";
    echo"<td>"; echo $row["name"]; echo"</td>";
    echo"<td>"; echo $row["email"]; echo"</td>";
    echo"<td>"; echo $row["mobile"]; echo"</td>";
    echo"<td>"; echo $row["password"]; echo"</td>";
    echo"</tr>";
}
echo"</table>";
}
if(isset($_POST["submit5"]))
{
$res=mysqli_query($link,"select * from crud where id='$_POST[id]'");
echo"<table border=1>";
    echo"<tr>";
    echo"<th>"; echo"id"; echo"</th>";
    echo"<th>"; echo"name"; echo"</th>";
    echo"<th>"; echo"email"; echo"</th>";
    echo"<th>"; echo"mobile"; echo"</th>";
    echo"<th>"; echo"password"; echo"</th>";
    echo"</tr>";
while($row=mysqli_fetch_array($res))
{
    echo"<tr>";
    echo"<td>"; echo $row["id"]; echo"</td>";
    echo"<td>"; echo $row["name"]; echo"</td>";
    echo"<td>"; echo $row["email"]; echo"</td>";
    echo"<td>"; echo $row["mobile"]; echo"</td>";
    echo"<td>"; echo $row["password"]; echo"</td>";
    echo"</tr>";
}
echo"</table>";
}
?>
