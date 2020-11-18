<!DOCTYPE html>

<html>

<head>
<style>
.imgphoto{
  width:1100px;
  height:800px;
}
</style>
    <title>Banking System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>


<body>
    <?php include('navbar.php'); ?>

    <section>
    	<div class="container">
          <!--<div class="row">
             <div class="col s6 description">
                <p>Lorem ipsum non fugiat qui qui culpa incididunt nulla dolor laboris do id elit voluptate magna sit tempor laborum nostrud ea tempor minim tempor fugiat consequat nulla sunt ullamco ad dolor elit in in non nisi labore sit in cupidatat fugiat qui veniam cillum velit occaecat officia consequat exercitation et voluptate proident sed amet aute ad ad officia dolore ex consectetur tempor non amet magna ea cillum occaecat laborum ut dolor sit duis anim sint dolor amet dolore incididunt enim et nostrud enim eu elit laboris dolor pariatur ex et</p>
             </div>
             <div class="col s6">
                <img src="vector.svg" class="vector" width="500px" height="500px"alt="mobile banking vector image">
             </div>
          </div>-->
          <div class="slideshow-container">

<div class="mySlides fade">
  
  <img class="imgphoto" src="bankphoto.jpg">
  
</div>

<div class="mySlides fade">
  
  <img class="imgphoto" src="bank-2.jpg">
 
</div>

<div class="mySlides fade">
  
  <img class="imgphoto" src="bank-6.jpg">
  
</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


</div>
        

          <div class="go-to">
        	<a href="transferHistory.php" class="btn-1">Transfer History</a>
            <a href="selectUser.php" class="btn-1">Select User</a>
          </div>     
        </div>
    </section>
    <?php include('footer.php'); ?>
</body>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</html>