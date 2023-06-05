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
$UserID =  $_POST['UserID'];
$isAdmin = $_POST['isAdmin'];
// sql to delete a record
$sql = "DELETE FROM admin WHERE UserID='$UserID'";

if ($conn->query($sql) === TRUE) {
  // echo "Record deleted successfully";
  if($isAdmin)
  {
  header("Location:viewa.php");
  }
  else
  {
      header("Location:viewo.php");
  }
} else {
  echo "Error deleting record: " . $conn->error;
}

$conn->close();
?>
