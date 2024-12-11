<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
        /* Flexbox layout for side-by-side content */
        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100vh; /* Full screen height */
            padding: 20px;
        }

        /* Styling for the video (left side) */
        .video-container {
            flex: 1;
            margin-right: 20px;
        }

        video {
            width: 100%; /* Make the video responsive */
            max-width: 400px; /* Limit the video width */
            height: auto;
        }

        /* Styling for the content (right side) */
        .content-container {
            flex: 1;
            text-align: left; /* Aligns text to the left */
            padding-right: 550px; /* Optional: Add padding for extra space */
            padding-bottom: 160px;
        }

        h2 {
            font-size: 3em;
            margin-bottom: 30px;
        }

        h1 {
            font-size: 1.8em;
            margin-bottom: 30px;
        }

        p {
            font-size: 1.3em;
        }

        /* Styling for images below the text */
        .image-container {
            display: flex; /* Ensures images are side by side */
            gap: 10px; /* Adds space between images */
            margin-top: 30px; /* Space between paragraph and images */
        }

        .image-container img {
            width: 150px; /* Set fixed width */
            height: 150px; /* Set fixed height to create a square shape */
            object-fit: cover; /* Ensures the image fills the square area */
            border-radius: 10px; /* Optional: Add rounded corners to the images */
        }

        /* New section style */
        .section-heading {
            font-size: 2em;
            margin-top: 50px; /* Adds space between the previous content and new heading */
            margin-bottom: 20px;
            text-align: center;
        }

        /* Flexbox layout for the three containers */
/* Container for all boxes */
.three-containers {
    display: flex;
    justify-content: space-around;
    gap: 30px;
    flex-wrap: wrap; /* Wrap on smaller screens */
    margin: 0 10px;
}

/* Style for each container box */
.container-box {
    text-align: center;
    width: 25%; /* Control the width of each box */
    min-width: 250px; /* Prevents boxes from being too narrow */
    padding: 10px;
    box-sizing: border-box;
    border-radius: 10px; /* Optional: Rounded corners for visual appeal */
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Shadow for depth */
}

/* Image styling to make them square and responsive */
.container-box img {
    width: 50%; /* Makes the image take full width */
    height: 200px; /* Fixed height to ensure uniform size */
    object-fit: cover; /* Ensure the image covers the box area without stretching */
    border-radius: 10px; /* Optional: Rounded image corners */
}

/* Heading style for each section */
.container-box h3 {
    font-size: 1.6em;
    font-weight: bold;
    margin-top: 10px;
    color: #2f4f4f; /* Dark green color for text */
}

/* Paragraph style for description */
.container-box p {
    font-size: 1em;
    color: #555; /* Gray color for text */
    margin-top: 10px;
}

/* Section heading */
.section-heading {
    text-align: center;
    font-size: 2.2em;
    font-weight: bold;
    margin-top: 50px;
    margin-bottom: 30px;
    color: #2f4f4f;
}

    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="container">
        <!-- Video on the left -->
        <div class="video-container">
            <video controls muted> <!-- Added muted attribute to remove audio -->
                <source src="images/farmingindia.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>

        <!-- Content on the right -->
        <div class="content-container">
            <h2>Who We Are</h2>
            <p>
                farmtoglobal is a social impact company that believes health and sustainability go hand in hand. We follow the simple mantra, "Nurture nature for a better future". We have a threefold mission: to help the local farmers generate a sustainable livelihood, offer 100% pure organic food to the consumers, and make Mandya (to start with) a chemical-free district. So, each time you buy from us, you are not just taking a step closer to better health, but also securing the livelihoods of the local farmers and protecting “Mother Earth” from harmful pesticides & chemicals.
            </p>

            <!-- Image container below the paragraph -->
            <div class="image-container">
                <img src="images/img1.jpg" alt="Image 1">
                <img src="images/img2.jpg" alt="Image 2">
            </div>
        </div>
    </div>

    <div class="section-heading">
        <h1>Our Services</h1>
    </div>

   <section class="three-containers">
    <div class="container-box">
        <img src="images/m1.png" alt="Delivering Good Health">
        <h3>Delivering Good Health</h3>
        <p>At Organic Mandya, we are committed to delivering good health to our consumers through our organically grown products. Free from harmful chemicals and packed with essential nutrients, our produce supports a healthier lifestyle. Every item we offer is cultivated with care, ensuring that you receive the purest and most wholesome food, contributing to your overall well-being.</p>
    </div>
    <div class="container-box">
        <img src="images/m2.png" alt="Empowering Farmers with Fair Pricing">
        <h3>Empowering Farmers with Fair Pricing</h3>
        <p>Empowering Farmers with Fair Pricing At Organic Mandya, we believe in fair pricing for farmers, ensuring they are rewarded justly for their hard work and dedication to sustainable agriculture. By offering them a fair and transparent price for their produce, we empower farmers to continue growing organic crops while improving their livelihoods. This commitment not only strengthens the farming community but also ensures that consumers receive quality products that are cultivated with care and integrity.</p>
    </div>
    <div class="container-box">
        <img src="images/m3.png" alt="Nurturing Nature, Protecting Our Planet">
        <h3>Nurturing Nature, Protecting Our Planet</h3>
        <p>At Organic Mandya, protecting Mother Earth is at the heart of everything we do. Our organic farming practices preserve soil health, reduce water pollution, and minimize the use of harmful chemicals, ensuring a balanced ecosystem. By working in harmony with nature, we promote sustainability and contribute to a healthier environment for future generations. Our commitment to organic farming helps restore the Earth’s natural resources, supporting a greener and more sustainable planet.

</p>
    </div>
</section>
<br/>
<br/>
</body>
</html>
