<?php
header("Content-Type: application/json; charset=UTF-8");
// $obj = json_decode($_POST["x"], false);

$conn = new mysqli("localhost", "root", "", "vesselinfo");
// $stmt = $conn->prepare("SELECT 'MMSI',mmsi, 'STATUS',status, 'SPEED',speed, 'LON',lon, 'LAT',lat, 'COURSE',course, 'HEADING',heading,'SHIPID',shipID FROM silverstone");
// $stmt->bind_param("s", $obj->limit);
$mmsi =  $_GET['mssi'];
$stmt = $conn->prepare("SELECT * FROM SILVERSTONE where MMSI = '$mmsi'");
$stmt->execute();
$jsonarr= array();
$result = $stmt->get_result();
while($row=mysqli_fetch_assoc($result))
{
    $jsonarr[]=$row;
}
print(json_encode($jsonarr));

?>