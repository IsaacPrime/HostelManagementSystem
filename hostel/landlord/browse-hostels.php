<?php
include('../includes/connection.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>browse-hostels</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://kit.fontawesome.com/9edabedc14.js" crossorigin="anonymous"></script>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="./css/styleindex.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->
    <script src="js/script.js" defer></script>

</head>
<body>

    
<!-- header section starts  -->

<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <img src="images/logo1.png"></a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href="#">home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href="#">about</a>
        <a data-aos="zoom-in-left" data-aos-delay="600" href="#">location</a>
        <a data-aos="zoom-in-left" data-aos-delay="750" href="#">maps</a>
    </nav>
    <a data-aos="zoom-in-left" data-aos-delay="1300" href="book-hostel.php" class="btn">Dashboard</a>

</header>

<!-- header section ends -->



<!-- destination section starts  -->


<section class="destination" id="destination">


    <div class="heading">
    
        <span>our destination</span>
        <h1>make yours destination</h1>
    </div>
    
    <div class="box-container">
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
        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <div class="image">
                <img src="<?php echo $image; ?>" alt="">
            </div>
            <div class="content">
                <h3>Hostel Name <?php echo $name; ?></h3>
                <p><i class="fa-solid fa-location-dot user"></i> <?php echo $location; ?></p>
                <p><i class="fa-solid fa-house-circle-check user"></i> <?php echo $type; ?></p>
                <p><i class="fa-solid fa-phone user"></i> <?php echo $phone; ?></p>
                <p class="description"><i class="fa-solid fa-house-user"></i> <?php echo $amenities; ?></p>
                <button class="btn-primary"><a href="booking.php">Book Hostel</i></a></button>
            </div>
            
        </div>
        <?php } ?>
    </div>
    
    
    

</section>


<!-- destination section ends -->

<!-- services section starts  -->



<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <div class="heading">
        <span>blogs & posts</span>
        <h1>we untold stories</h1>
    </div>

    <div class="box-container">

        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <div class="image">
                <img src="images/blog-1.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="link">Life is a journey, not a destination</a>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                <div class="icon">
                    <a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a>
                    <a href="#"><i class="fas fa-user"></i> by admin</a>
                </div>
            </div>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="300">
            <div class="image">
                <img src="images/blog-2.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="link">Life is a journey, not a destination</a>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                <div class="icon">
                    <a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a>
                    <a href="#"><i class="fas fa-user"></i> by admin</a>
                </div>
            </div>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="450">
            <div class="image">
                <img src="images/blog-3.jpg" alt="">
            </div>
            <div class="content">
                <a href="#" class="link">Life is a journey, not a destination</a>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                <div class="icon">
                    <a href="#"><i class="fas fa-clock"></i> 21st may, 2021</a>
                    <a href="#"><i class="fas fa-user"></i> by admin</a>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- banner section starts  -->

<div class="banner">

    <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
        <span>start your adventures</span>
        <h3>Let's Explore This World</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum voluptatum praesentium amet quibusdam quam officia suscipit odio.</p>
        <a href="#book-form" class="btn">book now</a>
    </div>

</div>

<!-- banner section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <a href="#" class="logo"> <i class="fas fa-paper-plane"></i>travel </a>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati, ad?</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="300">
            <h3>quick links</h3>
            <a href="#home" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#about" class="links"> <i class="fas fa-arrow-right"></i> about </a>
            <a href="#destination" class="links"> <i class="fas fa-arrow-right"></i> destination </a>
            <a href="#services" class="links"> <i class="fas fa-arrow-right"></i> services </a>
            <a href="#gallery" class="links"> <i class="fas fa-arrow-right"></i> gallery </a>
            <a href="#blogs" class="links"> <i class="fas fa-arrow-right"></i> blogs </a>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="450">
            <h3>contact info</h3>
            <p> <i class="fas fa-map"></i> mumbai, india </p>
            <p> <i class="fas fa-phone"></i> +123-456-7890 </p>
            <p> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </p>
            <p> <i class="fas fa-clock"></i> 7:00am - 10:00pm </p>
        </div>

        <div class="box" data-aos="fade-up" data-aos-delay="600">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <form action="">
                <input type="email" name="" placeholder="enter your email" class="email" id="">
                <input type="submit" value="subscribe" class="btn">
            </form>
        </div>

    </div>

</section>

<div class="credit">created by <span>hostel management system team members</span> | all rights reserved!</div>

<!-- footer section ends -->



<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<script>

    AOS.init({
        duration: 800,
        offset:150,
    });

</script>
</div>
</body>
</html>
