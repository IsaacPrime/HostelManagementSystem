<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Management system</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->
    <script src="js/script.js" defer></script>

</head>
<body>
 <header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href="#" class="logo"> <img src="images/logo1.png"></a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href="#home">home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href="#about">about</a>
        <a data-aos="zoom-in-left" data-aos-delay="600" href="#destination">location</a>
        <a data-aos="zoom-in-left" data-aos-delay="750" href="#services">maps</a>
    </nav>
    <a data-aos="zoom-in-left" data-aos-delay="1300" href="home.php" class="btn">Continue</a>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">WELCOME</span>
        <h3 data-aos="fade-up" data-aos-delay="300">HOSTEL MANAGEMENT SYSTEM</h3>
        <p data-aos="fade-up" data-aos-delay="450">To interact with the full system features i.e the navbar tabs you are required to login</p>
        <a data-aos="fade-up" data-aos-delay="600" href="home.php" class="btn">Get Started</a>
    </div>

</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<script>

    AOS.init({
        duration: 800,
        offset:150,
    });

</script>

</body>
</html>