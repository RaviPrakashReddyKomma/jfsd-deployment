<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
/* Slideshow container */
.slideshow-container {
  position: relative;
  max-width: 95%;
  margin-top: 1in;  /* Move slideshow 1 inch down from the top */
  margin-left: 2.5%; /* Move the slideshow a little to the right */
  border-radius: 15px; /* Curved edges for the slideshow */
  overflow: hidden; /* Ensures that the curved edges are visible */
}

/* Hide all images by default */
.mySlides {
  display: none;
}

/* Style the navigation dots */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.dot:hover {
  background-color: #717171;
}

/* Style for prev/next buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.3s ease;
  border: none;
  background-color: rgba(0, 0, 0, 0.5);
}

.prev:hover, .next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

.prev {
  left: 0;
}

.next {
  right: 0;
}

/* Category Boxes */
.category-container {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 50px;
}

.category-box {
  width: 280px;  /* Increased width from 250px to 280px */
  height: 280px; /* Increased height from 250px to 280px */
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
  text-align: center;
}


.category-box img {
  width: 100%;
  height: 70%;
  object-fit: cover;
}

.category-box:hover {
  transform: scale(1.05);
}

.category-box h3 {
  margin-top: 10px;
  font-size: 20px;
  font-weight: bold;
}

/* Title for Categories */
.category-title {
  text-align: center;
  font-size: 30px;
  font-weight: bold;
  margin-bottom: 30px;
}


.category-a {
  text-align: center;
  font-size: 32px;  /* Slightly larger font */
  font-weight: bold; /* Make the text bold */
  margin-bottom: 30px;
  color: #006747; /* Bottle green */
  font-family: Arial, sans-serif; /* Simple, clean font */
  text-transform: uppercase; /* Uppercase letters for style */
}



/* Style for the new image boxes */
.hover-images-container {
  display: flex;
  justify-content: space-between;
  gap: 20px;
}

.hover-image-box {
  position: relative;
  width: 30%;
  height: 250px;  /* Adjust height for rectangular shape */
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.hover-image-box img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: opacity 0.3s ease;
}

/* Dull the background on hover */
.hover-image-box:hover img {
  opacity: 0.1;  /* Dull the image */
}

/* Hidden text that becomes visible on hover */
.hover-text {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: transparent; /* Initially hidden */
  font-size: 20px;
  font-weight: bold;
  transition: opacity 0.3s ease, color 0.3s ease;
}

/* On hover, show the text and change the text color to bottle green (#006747) */
.hover-image-box:hover .hover-text {
  opacity: 1;  /* Text becomes visible */
  color: #006747; /* Bottle green color */
}


.hover-image-box:hover {
  transform: scale(1.05);
}
</style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<!-- Slideshow container -->
<div class="slideshow-container">
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="images/img1.png" style="width:100%">
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="images/img2.png" style="width:100%">
    <div class="text"></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="images/img1.png" style="width:100%">
    <div class="text"></div>
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
<br/>
<br/>
<br/>
<!-- Categories Section -->
<div class="category-title">
  Categories
</div>

<div class="category-container">
  <div class="category-box">
    <img src="images/farm-to-table.png" alt="Farm-to-table">
    <h3>Farm-to-table products</h3>
  </div>
  <div class="category-box">
    <img src="images/beverages.png" alt="Beverages">
    <h3>Beverages</h3>
  </div>
  <div class="category-box">
    <img src="images/processed-foods.png" alt="Processed foods">
    <h3>Processed foods</h3>
  </div>
</div>

<div class="category-container">
  <div class="category-box">
    <img src="images/handmade-goods.png" alt="Handmade goods">
    <h3>Hand made goods</h3>
  </div>
  <div class="category-box">
    <img src="images/craft-products.png" alt="Craft products">
    <h3>Craft products</h3>
  </div>
  <div class="category-box">
    <img src="images/speciality-items.png" alt="Speciality items">
    <h3>Speciality items</h3>
  </div>
</div>
<!-- Your existing code -->

<br/>
<br/>
<br/>
<br/>
<!-- New Div with Grey Background -->
<div class="category-a">
  Fuel your body with nature's best, for health is the greatest wealth.
</div>
<br/>
<br/>
<div >
  <div class="hover-images-container">
    <div class="hover-image-box">
      <img src="images/dry_fruites_banner.png" alt="Image 1">
      <div class="hover-text">Natural, chemical-free cereals to start your day the organic way</div>
    </div>
    <div class="hover-image-box">
      <img src="images/cereals_banner.png" alt="Image 2">
      <div class="hover-text">Fuel your day with premium quality dry fruits and seeds
</div>
    </div>
    <div class="hover-image-box">
      <img src="images/Oils_banner.png" alt="Image 3">
      <div class="hover-text">Organic, cold pressed cooking oils to nourish your health</div>
    </div>
  </div>
</div>

<!-- Your existing code continues -->
<br/>
<br/>
<br/>
<br/>

<script>
// Slideshow JavaScript
var slideIndex = 1;
showSlides(slideIndex);

// Automatic sliding every 3 seconds (3000 milliseconds)
var slideInterval = setInterval(function() {
  plusSlides(1);
}, 2000); // Adjust the time interval as needed

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (var i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (var i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html>
