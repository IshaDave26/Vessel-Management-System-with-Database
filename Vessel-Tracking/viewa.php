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
	<div class="card" style="position:absolute;left:37%;width: 26.5rem;margin-top: 9%;margin-right:1%;height: 70%;border-radius: 0.5rem">
			<div class="card-body">

				<!--Header-->
				<a href="table.html">
				<div class="form-header" style="border-radius: 5rem;padding-bottom: 1%;background-color: #86c232 !important;">
					<h3> << ADMIN USER DETAILS</h3>
				</div></a>
				<!-- <img src="./img/anchor_lg.png" class="text-center" style="position:absolute;opacity:0.04;top:25%;right:0px;left:3px" height="75%" /> -->
				<div id="scrollable-content" style='width: 24rem; height: auto;'>
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
				{  if($rows["isAdmin"]){
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
				<a href="insert.html">
                <div class="md-form"
                    style="display: inline-flex;width: 100%;margin-bottom: 0px;margin-right: 0px;margin-left: 0px!important">
                    <button class="btn btn-rounded waves-effect waves-light search"
                        style="margin-left: 0% !important;font-size: 1em !important;margin-top:1em !important;font-weight: bold;">Insert</button>
                </a>
				<a href="update.html">
               
                    <button class="btn btn-rounded waves-effect waves-light search"
                        style="margin-left: 3% !important;font-size: 1em !important;margin-top:1em!important;font-weight: bold;">Update</button>
                </a>
				<a href="delete.html">
                
                    <button class="btn btn-rounded waves-effect waves-light search"
                        style="margin-left: 6% !important;font-size: 1em !important;margin-top:1em !important;font-weight: bold;">Delete</button>
                </a>

			</div>
			</div>
	</div>
	</section>
</body>

</html>
