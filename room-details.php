<?php
error_reporting(0);
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
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
	<title>Hostel Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>
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
			
			<body>
				<style> @media print{
					body *{
						visibility:hidden;
					}
					.print-container, .print-container *{
						visibility: visible;
					}
				}
				</style>
				<script type="text/javascript">
					function myfun() {
					  window.print(); 
				  }
				  </script> 
				  <div class=" row print-container">
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">Hostel Details </h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Hostel Details </div>
							<div class="panel-body">
								<table id="zctb" class="table table-bordered " cellspacing="0" width="100%">
									
									
									<tbody>
<?php	
$aid=$_SESSION['login'];
	$ret="select * from registration where emailid=?";
$stmt= $mysqli->prepare($ret) ;
$stmt->bind_param('s',$aid);
$stmt->execute() ;
$res=$stmt->get_result();
$cnt=1;
while($row=$res->fetch_object())
	  {
	  	?>

<tr>
<td colspan="4"><h4>Room Realted Info</h4></td>
</tr>
<tr>
<td colspan="6"><b>Booking Date :<?php echo $row->postingDate;?></b></td>
</tr>



<tr>
<td><b>Hostel Name:</b></td>
<td><?php echo $row->roomno;?></td>
<td><b>Persons per room:</b></td>
<td><?php echo $row->personproom;?></td>
<td><b>Fees PM :</b></td>
<td id="row"><?php echo $fpm=$row->feespm;?></td>
</tr>
<td><b>Stay From :</b></td>
<td><?php echo $row->postingDate;?></td>
<td><b>Duration:</b></td>
<td><?php echo $dr=$row->duration;?> Months</td>
</tr>

<td><b>Landlord Name :</b></td>
<td><?php echo $row->landlordname;?></td>
<td><b>Landlord Phone:</b></td>
<td><?php echo $dr=$row->landlordphone;?></td>
</tr>
<td colspan="6"><h4>Personal Info Info</h4></td>
</tr>

<tr>
<td><b>Reg No. :</b></td>
<td><?php echo $row->regno;?></td>
<td><b>Full Name :</b></td>
<td><?php echo $row->firstName;?><?php echo $row->middleName;?><?php echo $row->lastName;?></td>
<td><b>Email :</b></td>
<td><?php echo $row->emailid;?></td>
</tr>


<tr>
<td><b>Contact No. :</b></td>
<td><?php echo $row->contactno;?></td>
<td><b>Gender :</b></td>
<td><?php echo $row->gender;?></td>
<td><b>Course :</b></td>
<td><?php echo $row->course;?></td>
</tr>


<tr>
<td><b>Emergency Contact No. :</b></td>
<td><?php echo $row->egycontactno;?></td>
<td><b>Guardian Name :</b></td>
<td><?php echo $row->guardianName;?></td>
<td><b>Guardian Relation :</b></td>
<td><?php echo $row->guardianRelation;?></td>
</tr>

<tr>
<td><b>Guardian Contact No. :</b></td>
<td colspan="6"><?php echo $row->guardianContactno;?></td>
</tr>

<tr>
<td colspan="6"><h4>Addresses</h4></td>
</tr>
<tr>
<td><b>Home Address</b></td>
<td colspan="2">
<?php echo $row->corresAddress;?><br />
<?php echo $row->corresCIty;?>, <?php echo $row->corresPincode;?><br />
<?php echo $row->corresState;?>


</td>
<td><b>School Address</b></td>
<td colspan="2">
<?php echo $row->pmntAddress;?><br />
<?php echo $row->pmntCity;?>, <?php echo $row->pmntPincode;?><br />
<?php echo $row->pmnatetState;?>	

</td>
</tr>


<?php
$cnt=$cnt+1;
} ?>
</tbody>
</table>
</div>
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
	<script>
		 function pay() {

         var url = "https://tinypesa.com/api/v1/express/initialize";

         fetch(url, {
	     body: "amount=20&msisdn=***********",
	     headers: {
		 Apikey: "LFhvND********",
		 "Content-Type": "application/x-www-form-urlencoded",
	},
	method: "POST",
});

}
	</script>

</body>
<div class="text-right">
<button onclick=" myfun()" class="btn-primary">print page </button> </div>
</div>
<div class="col-sm-6 col-sm-offset-4">
 <button  class="btn-primary"> <a href="payment.php" onclick="pay()" style="color: #fff">Pay Hostel rent here</a></button></div>
</html>
