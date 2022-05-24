<?php
/* error_reporting(0); */
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if($_POST['submit'])
{
$seater=$_POST['seater'];
$roomno=$_POST['rmno'];
$fees=$_POST['fee'];
$pproom=$_POST['pproom'];
$roomtype=$_POST['rtype'];
$landlordphone=$_POST['lphone'];
$landlordname=$_POST['lndname'];
$hostelid=$_POST['hstid'];
$hostellocation = $_POST['location'];
$proximity = $_POST['proximity'];
$amenities = $_POST['amenities'];
$image = $_FILES['file'];
$imagefilename = $image['name'];
$imagefileerror = $image['error']; 
$imagetemp = $image['tmp_name'];
$filename_separate = explode('.', $imagefilename);
$file_extension = strtolower($filename_separate[1]);
$extension = array('jpeg', 'jpg', 'png','gif','jpeg','pdf');
$sql="SELECT room_no FROM rooms where room_no=?";
$stmt1 = $mysqli->prepare($sql);
$stmt1->bind_param('s',$roomno);
$stmt1->execute();
$stmt1->store_result(); 
$row_cnt=$stmt1->num_rows;;
if($row_cnt>0)
{
echo"<script>alert('Hostel already exists');</script>";
exit();
}
if (in_array($file_extension, $extension)) {
$upload_image = 'uploads/'.$imagefilename;
move_uploaded_file($imagetemp,$upload_image);
$query="INSERT INTO  `rooms` (seater,room_no,pproom,roomtype,fees,landlordphone,landlordname,hostel_id,hostel_image,hostellocation,proximity,amenities) values(?,?,?,?,?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('ssssssssssss',$seater, $roomno,$pproom,$roomtype, $fees,$landlordphone,$landlordname,$hostelid,$upload_image,$hostellocation,$proximity,$amenities);
$stmt->execute();
echo"<script>alert('Hostel has been added successfully');</script>";
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
	<title>Create Hostel</title>
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
					
						<h2 class="page-title">Register Hostel </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Add Hostel</div>
									<div class="panel-body">
									<?php if(isset($_POST['submit']))
{ ?>
<p style="color: red"><?php echo htmlentities($_SESSION['msg']); ?><?php echo htmlentities($_SESSION['msg']=""); ?></p>
<?php } ?>
	<form method="post" class="form-horizontal" enctype="multipart/form-data">
		
		<div class="hr-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Seater</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" id="seater" name="seater" value="" required="required">
												
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Hostel Name</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="rmno" id="rmno" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Persons Per Room</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="pproom" id="pproom" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Room Type</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="rtype" id="rtype" value="" required="required">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Fee(Per Student)</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="fee" id="fee" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Landlord Phone</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="lphone" id="lphone" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Landlord Name</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="lndname" id="lndname" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Hostel Id</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="hstid" id="hstid" value="">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Hostel Location</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="location" id="location" value="">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Proximity to The University</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="proximity" id="proximity" value="">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Available Amenities</label>
<div class="col-sm-8">
<textarea class="form-control" placeholder="Enter Hostel Amenities Here" name="amenities" id="amenities" value=""></textarea>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Hostel Image</label>
<div class="col-sm-8">
<input type="file" class="form-control" name="file" id="file" value="">
</div>
</div>

<div class="col-sm-8 col-sm-offset-2">
<input class="btn btn-primary" type="submit" name="submit" value="Create Room ">
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