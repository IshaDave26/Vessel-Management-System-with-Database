<!-- PHP code to establish connection with the localserver -->
<?php
$user = 'root';
$password = '';

$database = 'userinfo';

$servername='localhost';
$mysqli = new mysqli($servername, $user,
				$password, $database);
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}
$sql = " SELECT * FROM admin ";
$result = $mysqli->query($sql);
$mysqli->close();
?>
<!-- HTML code to display data in tabular format -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>ADMIN USER DETAILS</title>
	<!-- CSS FOR STYLING THE PAGE -->
    <link href="css/popup.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
	<link rel="stylesheet" href="./css/github.css">
	<script src="./js/highlight.pack.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAs0yjICEX_KiaE65lPBTHs69v1lEtjzp8"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="css/bootstrap.min.css" rel="stylesheet">	
	<link href="css/mdb.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
	
</head>

<body>
	<section>
	<div class="card" style="position:absolute;left:37%;width: 26rem;margin-top: 9%;margin-right:1%;height: 70%;border-radius: 0.5rem">
			<div class="card-body">

				<!--Header-->
				<a href="table.html">
				<div class="form-header" style="border-radius: 5rem;padding-bottom: 1%;background-color: #86c232 !important;">
					<h3 style="font-size:1.5em ;"><< OPERATOR USER DETAILS</h3>
				</div></a>
				<!-- <img src="./img/anchor_lg.png" class="text-center" style="position:absolute;opacity:0.04;top:25%;right:0px;left:0px;" height="75%" /> -->
				<div id="scrollable-content" style='width: 23.7rem; height: auto;'>
		<!-- TABLE CONSTRUCTION -->
		<table class="table table-striped text-center" style="left:1%;">
			<tr>
			    <th style="font-weight:bolder;">UserID</th>
			    <th style="font-weight:bolder;">Username</th>
				<th style="font-weight:bolder;">Email</th>
				<th style="font-weight:bolder;">Password</th>
			</tr>
		
			<?php
				// LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())
				{ if($rows["isAdmin"]==0){
			?>
			<tr>
				<!-- FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN -->
				<td><?php echo $rows['UserID'];?></td>
				<td><?php echo $rows['UserName'];?></td>
				<td><?php echo $rows['Email'];?></td>
				<td><?php echo $rows['Password'];?></td>
			</tr>
			<?php
				}}
			?>
		</table>
				</div>
			</div>
	</div>
	</section>
</body>

</html>
