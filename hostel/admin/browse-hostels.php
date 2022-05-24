<?php
include('../includes/connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Booking Page</title>
    <link rel="stylesheet" href="../card/browse-hostels.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
<header class="header">

<div id="menu-btn" class="uil uil-bars"></div>

<a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <img src="../images/logo1.png"></a>

<nav class="navbar">
    <a data-aos="zoom-in-left" data-aos-delay="300" href="#">home</a>
    <a data-aos="zoom-in-left" data-aos-delay="450" href="#">about</a>
    <a data-aos="zoom-in-left" data-aos-delay="600" href="#">location</a>
    <a data-aos="zoom-in-left" data-aos-delay="750" href="#">maps</a>
</nav>
<a data-aos="zoom-in-left" data-aos-delay="1300" href="book-hostel.php" class="btn">Dashboard</a>

</header>


    <div class="main-wrapper">
        <div class="container">
            <div class="main-title">
                <h1>Available Hostels For Booking</h1>
            </div>
            <div class="display-style-btns">
                <button type="button" id="grid-active-btn"><i class="uil uil-apps"></i></button>
                <button type="button" id="details-active-btn"><i class="uil uil-list-ol-alt"></i></button>
            </div>
            <div class="item-list">
                <?php
                  $query = "SELECT * from `rooms` ORDER BY posting_date DESC";
                  $result = mysqli_query($conn, $query); 
                  while($hostel_result = mysqli_fetch_assoc($result)){
                  $name = $hostel_result['room_no'];
                  $fees = $hostel_result['fees'];
                  $postingdate = $hostel_result['posting_date'];
                  $type = $hostel_result['roomtype'];
                  $phone = $hostel_result['landlordphone'];
                  $location = $hostel_result['hostellocation'];
                  $proximity = $hostel_result['proximity'];
                  $amenities = $hostel_result['amenities'];
                  $image = $hostel_result['hostel_image'];
                ?>
                <div class="item">
                    <div class="item-img">
                        <img src="../landlord/<?php echo $image; ?>" alt="">
                        
                    </div>
                    <div class="item-detail">
                        <a href="#" class="hostel-name"><?php echo $name; ?></a>
                        <div class="item-price">
                            <span class="price"><i class="uil uil-money-bill"></i><?php echo $fees; ?> Per Month</span>
                            <span class="price"><i class="uil uil-phone"></i><?php echo $phone; ?></span>
                            <span class="price"><i class="uil uil-estate"></i><?php echo $type; ?></span>
                        </div>
                        <p><i class="uil uil-calender"></i><?php echo $postingdate; ?></p>
                        <p><i class="uil uil-location-pin-alt"></i><?php echo $location; ?></p>
                        <p><i class="uil uil-tape"></i><?php echo $proximity; ?></p>
                        <p><i class="uil uil-house-user"></i><?php echo $amenities; ?></p>
                        <a data-aos="zoom-in-left" data-aos-delay="1300" href="book-hostel.php" class="btn">Book Hostel</a>
                    </div>
                </div>
                <?php } ?>

                
            </div>
        </div>
    </div>
    <script>
        const itemList = document.querySelector(".item-list");
        const gridViewBtn = document.getElementById("grid-active-btn");
        const detailViewBtn = document.getElementById("details-active-btn");
        
        

        gridViewBtn.classList.add("active-btn");
        
        

        gridViewBtn.addEventListener('click', () => {
           gridViewBtn.classList.add("active-btn");
           detailViewBtn.classList.remove("active-btn");
           itemList.classList.remove("details-active");
        });
        
        detailViewBtn.addEventListener('click', () => {
          detailViewBtn.classList.add("active-btn");
          gridViewBtn.classList.remove("active-btn");
          itemList.classList.add("details-active");
        });
        
        
        let navbar = document.querySelector('.header .navbar');

          document.querySelector('#menu-btn').onclick = () =>{
          navbar.classList.toggle('active');
        }

          window.onscroll = () =>{
          navbar.classList.remove('active');
        }

    </script>
</body>
</html>