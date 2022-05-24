 
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Manage Hostels</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">

	<style>
	.btn-primary{
            padding: 1rem;
            border-radius: 5px;
			margin-bottom: 1rem;
        }
	</style>
</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<br>
						<h2 class="page-title">Manage Hostel </h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Hostel Details</div>
							<div class="panel-body">

							<form class="form-horizontal" action="manage-rooms.php" method="POST">
  <div class="form-group">
    <label class="col-lg-2 control label">Hostel ID</label>
	<div class="col-lg-4">
    <input type="tect" class="form-control" name="hostel_id" placeholder="Enter hostel ID">
  </div>
  <button type="submit" name="submit" class="btn btn-primary">Request Hostels Under Your ID</button>
</form>

		<table id="zctb" class="display table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Sno.</th>
					<th>Hostel ID</th>
					<th>Rooms</th>
					<th>Hostel Name</th>
					<th>Persons/Room  </th>
					<th>Fees (PM) </th>
					<th>landlord Phone </th>
				</tr>
			</thead>
			<tfoot>
				<tr>
				<th>Sno.</th>
					<th>Hostel ID</th>
					<th>Rooms</th>
					<th>Hostel Name</th>
					<th>Persons/Room  </th>
					<th>Fees (PM) </th>
					<th>landlord Phone </th>
				</tr>
			</tfoot>
			<tbody>

<?php
error_reporting(0);
include('includes/config.php');

if(isset($_POST['submit']))
{
	$hostel_id = $_POST['hostel_id'];

	if($hostel_id !=""){
		$query="select * from rooms where hostel_id = '$hostel_id'";
		$data = mysqli_query($mysqli, $query);
		if(mysqli_num_rows($data) > 0){
			while($row = mysqli_fetch_assoc($data)){
				$id = $row['id'];
				$hostel_id = $row['hostel_id'];
				$seater = $row['seater'];
				$room_no = $row['room_no'];
				$pproom = $row['pproom'];
				$fees = $row['fees'];
				$landlordphone = $row['landlordphone'];
				?>

				<tr>
					<td><?php echo $id;?><td>
					<td><?php echo $hostel_id;?><td>
					<td><?php echo $seater;?><td>
					<td><?php echo $room_no;?><td>
					<td><?php echo $pproom;?><td>
					<td><?php echo $fees;?><td>
					<td><?php echo $landlordphone;?><td>
				</tr>
				<?php
			}
		}
		else{
			?>
			<tr>
			<td>No Matching Records Found</td>
			</tr>
			<?php
		}
	}
}
?>			
										
									</tbody>
								</table>

								
							</div>
						</div>

					
					</div>
				</div>

			

			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
s