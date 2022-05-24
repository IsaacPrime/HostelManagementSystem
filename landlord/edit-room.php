<?php
error_reporting(0);
include('includes/config.php');

if (isset($_POST["submit"])) {

	$seater=$_POST['seater'];
	$room_no=$_POST['room_no'];
	$pproom=$_POST['pproom'];
	$fees=$_POST['fees'];
	$landlordphone=$_POST['landlordphone'];

$sql="update rooms set id=$id,seater='$seater',room_no='$room_no',pproom='pproom',fees='$fees',landlordphone='$landlordphone' where id=$id";
		$result = mysqli_query($mysqli, $sql);
		if($result){
			//echo "<script>alert('Updated successfully');</script>";
      header('location:manage-rooms.php');
		}else{
			echo "<script>alert('Failed...');</script>";
		}
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Edit Hostel Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Edit Hostel Details </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Edit Hostel Details</div>
									<div class="panel-body">
										<form method="POST" class="form-horizontal">
												
						<div class="hr-dashed"></div>

<?php	
$id=$_GET['updateid'];
$query="select * from rooms where id=$id";
$data = mysqli_query($mysqli, $query);
$row=mysqli_fetch_assoc($data);
$seater=$row['seater'];
$room_no=$row['room_no'];
$pproom=$row['pproom'];
$fees=$row['fees'];
$landlordphone=$row['landlordphone'];

	  ?>

					<div class="form-group">
					<label class="col-sm-2 control-label">Seater  </label>
				<div class="col-sm-8">
				<input type="text"  name="seater" value="<?php echo $seater;?>"  class="form-control"> </div>
				</div>
			 <div class="form-group">
			<label class="col-sm-2 control-label">Hostel Name </label>
	<div class="col-sm-8">
<input type="text" class="form-control" name="room_no" id="room_no" value="<?php echo $room_no;?>" disabled>
<span class="help-block m-b-none">	Hostel name can't be changed.</span>
					 </div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">Persons/Room  </label>
				<div class="col-sm-8">
				<input type="text"  name="pproom" value="<?php echo $pproom;?>"  class="form-control"> </div>
				</div>
<div class="form-group">
				<label class="col-sm-2 control-label">Fees (PM) </label>
				<div class="col-sm-8">
				<input type="text" class="form-control" name="fees" value="<?php echo $fees;?>" >
							</div>
						</div>
						<div class="form-group">
					<label class="col-sm-2 control-label">Landlord Phone  </label>
				<div class="col-sm-8">
				<input type="text"  name="landlordphone" value="<?php echo $landlordphone;?>"  class="form-control"> </div>
				</div>
												<div class="col-sm-8 col-sm-offset-2">
													
													<input class="btn btn-primary" type="submit" name="submit" value="Update Room Details ">
												</div>
											</div>

										</form>

									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</script>
</body>

</html>