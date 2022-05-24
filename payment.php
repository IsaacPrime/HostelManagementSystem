
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
	<title>Pay</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>

<style>
        .center{
            text-align: center;
            margin-top: 50px;
            color: #20bf6b;
            text-transform: uppercase;
            background: #F8EFBA;
            width: 70%;
            margin: 50px auto  0;
            padding: 6px;
            
        }
form input {
            border: solid #333 2px !important;
}
        .card {
            width: 70%;
            padding: 40px 60px;
            background: hsl(0, 0%, 100%);
            border-right: 1px solid hsl(0, 0%, 90%);
        }
        .card img{
            width: 100%;
            height: 200px;
            object-fit: cover;
            object-position: center;
            border-radius: 5px;
        }

        .custom{
            border-radius: 40px;
            box-shadow: 1px 1px 1px  black;
            outline: none;
        }
        .btn-primary{
            width: 80%;
            padding: 1rem;
            border-radius: 5px;
        }
    </style>
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
					
						<h2 class="page-title">Pay Hostel Rent </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">PAY</div>
									<div class="panel-body">
    <div class="container mt-5 d-flex justify-content-center">
       
        <div class="card">
            <img src="./images/mpesa.jpg" alt="">
        <form action="payment.php" method="POST">
            <div class="Panel Footer"> <input  class=" d-block custom2 form-control mt-3 " type="text"  name="phone-number" placeholder="Phone number"></div>
            <div class="Panel Footer"> <input  class=" d-block custom2 form-control mt-3 " type="text"  name="amount" placeholder="Enter Amount"></div>
           
            <div class="mt-5 align-items-center d-flex justify-content-center"><button class="btn-primary" type="submit" name="submit" style="color: #fff">Lipa na Mpesa</button> </div>

        </div>
        </form>
    </div>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript' src=''></script>
    <script type='text/javascript'></script>
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