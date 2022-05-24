<?php
//error_reporting(0);
include('includes/connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Booking Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="../card/browse.css">
</head>
<body>



<header class="header">

<div id="menu-btn" class="uil uil-bars"></div>

<a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <img src="images/logo1.png"></a>

<nav class="navbar">
    <a data-aos="zoom-in-left" data-aos-delay="300" href="#">home</a>
    <a data-aos="zoom-in-left" data-aos-delay="450" href="#">about</a>
    <a data-aos="zoom-in-left" data-aos-delay="600" href="contact.php">Support</a>
    <a data-aos="zoom-in-left" data-aos-delay="750" href="https://www.google.com/maps/@0.1397757,37.7131249,15z">maps</a>
</nav>
<a data-aos="zoom-in-left" data-aos-delay="1300" href="dashboard.php" class="btn-header">Dashboard</a>

</header>







<section class="featured" id="featured">
<div class="box-container">
<?php
        function timeago($time, $tense='ago'){
            static $periods = array('year', 'month', 'day', 'hour', 'minute', 'second');

            $now = new DateTime('now');
            $time = new DateTime($time);
            $diff = $now->diff($time)->format('%y %m %d %h %i %s');
            $diff = explode(' ', $diff);
            $diff = array_combine($periods, $diff);
            $diff = array_filter($diff);

            $period = key($diff);
            $value = current($diff);

           
        }
        

                  $query = "SELECT * from `rooms` ORDER BY posting_date DESC";
                  $result = mysqli_query($conn, $query); 
                  while($hostel_result = mysqli_fetch_assoc($result)){
                  $name = $hostel_result['room_no'];
                  $fees = $hostel_result['fees'];
                  $pproom = $hostel_result['pproom'];
                  $type = $hostel_result['roomtype'];
                  $phone = $hostel_result['landlordphone'];
                  $location = $hostel_result['hostellocation'];
                  $proximity = $hostel_result['proximity'];
                  $amenities = $hostel_result['amenities'];
                  $image = $hostel_result['hostel_image'];
                  $posted_at = $hostel_result['posting_date'];

                  

                  /* $unixTimestamp = convertToUnixTimestamp($posted_at); */

                  date_default_timezone_set('Africa/Nairobi');
                  $time = $posted_at;
        
        /* $timeago = timeago($time); */
                  


               
                ?>
                

    <div class="box">
        <div class="image-container">
            <img src="<?php echo $image; ?>" alt="">
            <div class="info">
                
            </div>
            
        </div>
        <div class="content">
            <div class="price">
                <h3>Kshs <?php echo $fees; ?>=/Month</h3>
                
                
            </div>
            <div class="location">
                <h3><?php echo $name; ?></h3>
                <p><i class="uil uil-map"></i> <?php echo $location; ?></p>
                <p><i class="uil uil-map-marker"></i> <?php echo $proximity; ?></p>
            </div>
            <div class="details">
                <h3><i class="uil uil-phone"></i> <?php echo $phone; ?> </h3>
                <h3> <i class="fas fa-bed"></i> <?php echo $type; ?> </h3>
                <h3> <i class="uil uil-users-alt"></i>  <?php echo $pproom; ?> Per Room</h3>
            </div>
        </div>
    </div>
    <?php } ?>
    
</div>

</section>
<script src="./assets/js/script.js"></script>
<script>
    let navbar = document.querySelector('.header .navbar');

      document.querySelector('#menu-btn').onclick = () =>{
      navbar.classList.toggle('active');
      }

      window.onscroll = () =>{
      navbar.classList.remove('active');
     }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</body>
</html>