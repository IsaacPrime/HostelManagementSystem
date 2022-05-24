<?php error_reporting(0)?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Manage Hostellers</title>
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
						<h2 class="page-title">Filter Students</h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Students Details residing in this hostel</div>
							<div class="panel-body">
							<form class="form-horizontal" action="filter-students.php" method="POST">
  <div class="form-group">
    <label class="col-lg-2 control label">Hostel ID</label>
	<div class="col-lg-4">
    <input type="text" class="form-control" name="hostel_id" placeholder="Enter hostel ID">
  </div>
  <button type="submit" name="submit" class="btn btn-primary">Filter with Hostel ID</button>
</form>

								<table id="zctb" class="display table table-striped table-bordered table-hover">
									<thead>
										<tr>
										<th>Sno.</th>
										<th></th>
											<th>Student Name</th>
											<th>Reg no</th>
											<th>Contact no </th>
											<th>Gender</th>
											<th>Hostel Name</th>
											<th>Staying From </th>
											<th>Emergency contact</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Sno.</th>
											<th></th>
											<th>Student Name</th>
											<th>Reg no</th>
											<th>Contact no </th>
											<th>Gender</th>
											<th>Hostel Name</th>
											<th>Staying From </th>
											<th>Emergency contact</th>
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
		$query="select * from registration where hostel_id = '$hostel_id'";
		$data = mysqli_query($mysqli, $query);
		if(mysqli_num_rows($data) > 0){
			while($row = mysqli_fetch_assoc($data)){
				$id = $row['id'];
				$firstName = $row['firstName'];
				$regno = $row['regno'];
				$contactno = $row['contactno'];
				$gender = $row['gender'];
				$roomno = $row['roomno'];
				$postingDate = $row['postingDate'];
				$egycontactno = $row['egycontactno'];
				?>

				<tr>
					<td><?php echo $id;?><td>
					<td><?php echo $firstName;?></td>
					<td><?php echo $regno;?></td>
					<td><?php echo $contactno;?></td>
					<td><?php echo $gender;?></td>
					<td><?php echo $roomno;?></td>
					<td><?php echo $postingDate;?></td>
					<td><?php echo $egycontactno;?></td>
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
<div class="text-right">
<button onclick=" myfun()" class="btn-primary">print page </button> </div>
</div>
</html>
</html>
