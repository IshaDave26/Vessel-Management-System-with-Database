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
$sql = "UPDATE admin SET UserID='$UserID',UserName='$UserName',Email='$Email',Password='$Password',isAdmin='$isAdmin' WHERE UserID='$UserID'";

if ($conn->query($sql) === TRUE) {
//   echo "Record updated successfully";
  if($isAdmin)
  {
  header("Location:viewa.php");
  }
  else
  {
      header("Location:viewo.php");
  }
} else {
  echo "Error updating record: " . $conn->error;
}

$conn->close();
?>