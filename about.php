<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About | Chairs and Cheers</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images2/opening chair.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>We are a team of passionate home decor enthusiasts that believe a great home does not have to be extravagantly priced. 
            We create and source moderately priced home furnishings that are stylish and chic enough to make your neighbors envious.</p>
         <p>We dont just offer more than tables, and seats. Chairs and Cheers is instead founded on a desire for assisting you in 
            building a house that ignites your aspirations, reflects your uniqueness, and represents you. 
            At Chairs and Cheers, we think that if you have a little inspiration, you can create a beautiful home.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">client's reviews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/r1.jpeg" alt="">
         <p>This store has great variety of tables and seats. Amazing experience. Looking forward to buy more!! </p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Angeline Rojas</h3>
      </div>

      <div class="box">
         <img src="images/r2.jpeg" alt="">
         <p>The fabric and design of the products are superb. Thank you!<br><br></p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Claire Mendoza</h3>
      </div>

      <div class="box">
         <img src="images/r3.jpeg" alt="">
         <p>I heard of Chairs and Cheers through my friend and bought shopped from this website. Great experience ever. Thank you!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Ruth Cruz</h3>
      </div>

   </div>

</section>

<section class="authors">

   <h1 class="title">Owners</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/triziel.jpg" alt="">
         <div class="share">
            <a href="https://www.facebook.com/triziel.anne" class="fab fa-facebook-f"></a>
            <a href="https://twitter.com/yhezieyyie?t=I2hJZe0wExQUlMunWttQFw&s=09" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/p/CZqKiu4l74zWCkPtWszku4LjiCwz530iPDs_-o0/?igshid=YmMyMTA2M2Y=" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
         <h3>Triziel Ann Aquino Endaya</h3>
      </div>

      <div class="box">
         <img src="images/chester.jpg" alt="">
         <div class="share">
            <a href="https://www.facebook.com/chstrgrns" class="fab fa-facebook-f"></a>
            <a href="https://twitter.com/chestakun" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/ctr.grs/" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
         <h3>Chester Jose Gerones</h3>
      </div>
      </div>
   </div>

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>