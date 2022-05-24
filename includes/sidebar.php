<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">Main</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Dashboard</a></li>
					<li><a href="my-profile.php"><i class="fa fa-user"></i> My Profile</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Change Password</a></li>
<li><a href="book-hostel.php"><i class="fa fa-file-o"></i>Book Hostel</a></li>
<li><a href="room-details.php"><i class="fa fa-file-o"></i>My Hostel Details</a></li>
<li><a href="browse-hostels.php"><i class="fa fa-search"></i>Browse Hostels</a></li>
<li><a href="contact.php"><i class="fa fa-comments-o"></i>Support</a> </li>
<li><a href="https://www.google.com/maps/@0.1397757,37.7131249,15z"><i class="fa fa-map-o"></i>Directions</a></li>
<?php } else { ?>
				
				<li><a href="registration.php"><i class="fa fa-files-o"></i> Student Registration</a></li>
				<li><a href="home.php"><i class="fa fa-users"></i> Student Login</a></li>
				<li><a href="admin"><i class="fa fa-user"></i> Admin Login</a></li>
				<li><a href="landlord"><i class="fa fa-user"></i> Landlord Login</a></li>
				<li><a href="parent"><i class="fa fa-user"></i> Parent Login</a></li>
				<?php } ?>

			</ul>
		</nav>
		