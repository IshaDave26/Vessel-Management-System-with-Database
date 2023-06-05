<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "userinfo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

        $UserName =  $_POST['UserName'];
        $Email = $_POST['Email'];
        $Password =  $_POST['Password'];
        $UserID =  $_POST['UserID'];
        $isAdmin = $_POST['isAdmin'];

        if($isAdmin)
        {
$sql = "INSERT INTO admin (UserID,UserName,Email,Password,isAdmin)
VALUES ('$UserID', '$UserName', '$Email','$Password','1')";

if ($conn->query($sql) === TRUE) {
    header("Location:viewa.php");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
        }
        else
        {
            $sql = "INSERT INTO admin (UserID,UserName,Email,Password,isAdmin)
VALUES ('$UserID', '$UserName', '$Email','$Password','0')";

if ($conn->query($sql) === TRUE) {
header("Location:viewo.php");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
        }
$conn->close();
?>