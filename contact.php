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
	<title>Support</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact.css">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/map.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>

<style>
	.btn-primary{
            width: 80%;
            padding: 1rem;
            border-radius: 5px;
        }
        *{
            text-decoration: none !important;
}
</style>

</head>
<body>
	<font color="black">
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title"><br></br>How can we assist you </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Support</div>
									<div class="panel-body">

									<div class="container-contact-admin">
	<form class="contact1-form validate-form" action="https://formspree.io/f/xwkyrgzd" method="POST" id="contact">

      <div class="form-group">
        <label for="firstName"> First Name</label>
        <input type="text" id="firstName" name="firstName">
      </div>

      <div class="form-group">
        <label for="latsName">Last Name</label>
        <input type="text" id="lastName" name="lastName">
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email">
      </div>

      <div class="form-group">
        <label for="phone">Phone Number</label>
        <input type="text" id="phone" name="phone">
      </div>

      <div class="form-group">
        <label for="massage">Message</label>
        <textarea name="massage" id="massage" cols="30" rows="10"></textarea>
      </div>

      <button class="btn-primary" stype="submit">Submit</button>
  					<p id="my-form-status"></p>
    </form>
  </div>
  <div id="status"></div>
</section>
		</div>
	</div>

	<script src="https://smtpjs.com/v3/smtp.js"></script>
	<script>
  var form = document.getElementById("contact");
    async function handleSubmit(event) {
      event.preventDefault();
      var status = document.getElementById("my-form-status");
      var data = new FormData(event.target);
      fetch(event.target.action, {
        method: form.method,
        body: data,
        headers: {
            'Accept': 'application/json'
        }
      }).then(response => {
        if (response.ok) {
          status.innerHTML = "Message Sent successfuly";
          form.reset()
        } else {
          response.json().then(data => {
            if (Object.hasOwn(data, 'errors')) {
              status.innerHTML = data["errors"].map(error => error["message"]).join(", ")
            } else {
              status.innerHTML = "Oops! There was a problem submitting your form"
            }
          })
        }
      }).catch(error => {
        status.innerHTML = "Oops! There was a problem submitting your form"
      });
    }
    form.addEventListener("submit", handleSubmit)
	</script>	

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
	</font>
</body>

</html>