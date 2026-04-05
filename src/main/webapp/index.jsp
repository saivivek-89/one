<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ultimate Business Page</title>
<style>
/* ===== GLOBAL STYLES ===== */
* { box-sizing: border-box; margin:0; padding:0; font-family: 'Arial', sans-serif; scroll-behavior: smooth;}
body { background: #f8f8f8; color: #333; line-height: 1.6;}
a { text-decoration: none; color: inherit;}
img { max-width: 100%; display: block; }
.btn { display: inline-block; padding: 12px 25px; background: #ff6f61; color:#fff; border-radius: 5px; transition: 0.3s; cursor: pointer;}
.btn:hover { background: #ff4a3d;}

/* ===== HERO ===== */
.hero { background: url('https://via.placeholder.com/1920x1080') no-repeat center/cover; height: 100vh; display:flex; align-items:center; justify-content:center; text-align:center; position:relative; color:#fff;}
.hero::after { content:""; position:absolute; top:0; left:0; width:100%; height:100%; background: rgba(0,0,0,0.6);}
.hero-content { position:relative; z-index:2; animation: fadeIn 2s ease;}
.hero h1 { font-size:4rem; margin-bottom:20px;}
.hero p { font-size:1.5rem; margin-bottom:30px;}
@keyframes fadeIn { 0% { opacity:0; transform:translateY(-20px);} 100% { opacity:1; transform:translateY(0);}}

/* ===== NAVIGATION ===== */
nav { position: fixed; top:0; width:100%; background: rgba(255,255,255,0.95); display:flex; justify-content: space-between; align-items:center; padding:15px 50px; box-shadow:0 2px 5px rgba(0,0,0,0.1); z-index:10;}
nav .logo { font-weight:bold; font-size:1.5rem; color:#ff6f61;}
nav ul { list-style:none; display:flex;}
nav ul li { margin-left:30px;}
nav ul li a { font-weight:600; color:#333; transition:0.3s;}
nav ul li a:hover { color:#ff6f61;}

/* ===== SERVICES ===== */
.services { padding:100px 50px; text-align:center; background:#fff;}
.services h2 { font-size:3rem; color:#ff6f61; margin-bottom:50px;}
.service-cards { display:flex; flex-wrap:wrap; justify-content:space-around;}
.service-card { width:30%; margin-bottom:30px; background:#fff; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.1); transition: transform 0.3s;}
.service-card:hover { transform: translateY(-10px);}
.service-card img { height:200px; border-top-left-radius:10px; border-top-right-radius:10px; object-fit:cover;}
.service-card h3 { margin:15px 0; color:#ff6f61;}
.service-card p { padding:0 15px 15px; font-size:1rem;}

/* ===== LATEST DEALS ===== */
.deals { padding:100px 50px; background:#f1f1f1; text-align:center;}
.deals h2 { font-size:3rem; color:#ff6f61; margin-bottom:50px;}
.deal-cards { display:flex; flex-wrap:wrap; justify-content:space-around;}
.deal-card { width:30%; background:#fff; margin-bottom:30px; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.1); transition: transform 0.3s; padding-bottom:20px;}
.deal-card:hover { transform: translateY(-10px);}
.deal-card img { height:200px; border-top-left-radius:10px; border-top-right-radius:10px; object-fit:cover;}
.deal-card h4 { margin:15px 0; color:#ff6f61;}
.deal-card p { padding:0 15px 10px; font-size:0.95rem;}
.countdown { font-weight:bold; color:#ff4a3d; font-size:1rem;}

/* ===== GALLERY ===== */
.gallery { padding:100px 50px; text-align:center;}
.gallery h2 { font-size:3rem; color:#ff6f61; margin-bottom:50px;}
.gallery-images { display:flex; flex-wrap:wrap; justify-content:space-around;}
.gallery-images img { width:45%; margin:10px 0; border-radius:10px; transition: transform 0.3s;}
.gallery-images img:hover { transform: scale(1.05);}

/* ===== TESTIMONIALS ===== */
.testimonials { padding:100px 50px; background:#fff; text-align:center;}
.testimonials h2 { font-size:3rem; color:#ff6f61; margin-bottom:50px;}
.testimonial-cards { display:flex; flex-wrap:wrap; justify-content:space-around;}
.testimonial-card { width:30%; background:#f9f9f9; padding:20px; border-radius:10px; margin-bottom:30px; box-shadow:0 4px 10px rgba(0,0,0,0.1);}
.testimonial-card p { font-style:italic;}
.testimonial-card h4 { margin-top:15px; color:#ff6f61;}

/* ===== CONTACT ===== */
.contact { padding:100px 50px; text-align:center; background:#f1f1f1;}
.contact h2 { font-size:3rem; color:#ff6f61; margin-bottom:50px;}
#contact-form { display:flex; flex-direction:column; align-items:center; }
#contact-form input, #contact-form textarea { width:60%; padding:15px; margin:10px 0; border-radius:5px; border:1px solid #ccc; font-size:1rem;}
#contact-form button { padding:12px 25px; background:#ff6f61; border:none; color:#fff; border-radius:5px; cursor:pointer; font-size:1rem;}
#contact-form button:hover { background:#ff4a3d;}

/* ===== FOOTER ===== */
footer { padding:50px; background:#333; color:#fff; text-align:center;}
footer a { color:#ff6f61; margin:0 10px; transition:0.3s;}
footer a:hover { color:#fff;}

/* ===== RESPONSIVE ===== */
@media(max-width:992px){ .service-card,.deal-card,.testimonial-card { width:45%;} .gallery-images img { width:45%;} nav { padding:15px 20px;} }
@media(max-width:768px){ .service-card,.deal-card,.testimonial-card { width:100%;} .gallery-images img { width:100%;} .hero h1 { font-size:3rem;} .hero p { font-size:1.2rem; } nav ul { flex-direction:column;} nav ul li { margin:10px 0;} }
</style>
</head>
<body>

<!-- NAVIGATION -->
<nav>
  <div class="logo">BusinessX</div>
  <ul>
    <li><a href="#services">Services</a></li>
    <li><a href="#deals">Deals</a></li>
    <li><a href="#gallery">Gallery</a></li>
    <li><a href="#testimonials">Testimonials</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<!-- HERO -->
<section class="hero">
  <div class="hero-content">
    <h1>Grow Your Business With Us</h1>
    <p>Top solutions for web, apps, marketing, and design</p>
    <a href="#services" class="btn">Explore Services</a>
  </div>
</section>

<!-- SERVICES -->
<section class="services" id="services">
  <h2>Our Services</h2>
  <div class="service-cards">
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=Web+Development" alt=""><h3>Web Development</h3><p>Build modern responsive websites to grow your business.</p></div>
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=Mobile+Apps" alt=""><h3>Mobile Apps</h3><p>Create iOS & Android apps with seamless UX.</p></div>
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=Digital+Marketing" alt=""><h3>Digital Marketing</h3><p>Increase traffic & conversions with targeted campaigns.</p></div>
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=Graphic+Design" alt=""><h3>Graphic Design</h3><p>Design logos, brochures, and branding for your business.</p></div>
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=SEO" alt=""><h3>SEO Optimization</h3><p>Improve your search engine ranking organically.</p></div>
    <div class="service-card"><img src="https://via.placeholder.com/400x200?text=Consulting" alt=""><h3>Consulting</h3><p>Get expert advice to grow and scale your business.</p></div>
  </div>
</section>

<!-- LATEST DEALS -->
<section class="deals" id="deals">
  <h2>Latest Deals</h2>
  <div class="deal-cards">
    <div class="deal-card"><img src="https://via.placeholder.com/400x200?text=Deal+1" alt=""><h4>50% Off Web Design</h4><p>Get a modern website at half price! <span class="countdown">Limited Offer</span></p></div>
    <div class="deal-card"><img src="https://via.placeholder.com/400x200?text=Deal+2" alt=""><h4>App Development Package</h4><p>Startup special pricing on mobile apps. <span class="countdown">Offer Ends Soon</span></p></div>
    <div class="deal-card"><img src="https://via.placeholder.com/400x200?text=Deal+3" alt=""><h4>Marketing Consultation</h4><p>Free initial consultation for digital marketing. <span class="countdown">Book Now</span></p></div>
  </div>
</section>

<!-- GALLERY -->
<section class="gallery" id="gallery">
  <h2>Gallery</h2>
  <div class="gallery-images">
    <img src="https://via.placeholder.com/500x300?text=Gallery+1" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+2" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+3" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+4" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+5" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+6" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+7" alt="">
    <img src="https://via.placeholder.com/500x300?text=Gallery+8" alt="">
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="testimonials" id="testimonials">
  <h2>What Clients Say</h2>
  <div class="testimonial-cards">
    <div class="testimonial-card"><p>"The team delivered our website faster than expected and it looks amazing!"</p><h4>Jane Doe</h4></div>
    <div class="testimonial-card"><p>"Our app's launch was smooth and the user feedback has been phenomenal."</p><h4>John Smith</h4></div>
    <div class="testimonial-card"><p>"Marketing services increased our conversions by 120% in just 3 months."</p><h4>Mary Johnson</h4></div>
  </div>
</section>

<!-- CONTACT -->
<section class="contact" id="contact">
  <h2>Contact Us</h2>
  <form id="contact-form">
    <input type="text" id="name" placeholder="Your Name" required>
    <input type="email" id="email" placeholder="Your Email" required>
    <textarea id="message" placeholder="Your Message" rows="5" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<!-- FOOTER -->
<footer>
  &copy; 2026 BusinessX. Follow us:
  <a href="#">Facebook</a> | <a href="#">Twitter</a> | <a href="#">Instagram</a>
</footer>

<!-- JS -->
<script>
// FORM VALIDATION
document.getElementById('contact-form').addEventListener('submit', function(e){
  e.preventDefault();
  const name=document.getElementById('name').value.trim();
  const email=document.getElementById('email').value.trim();
  const message=document.getElementById('message').value.trim();
  if(name && email && message){ alert('Thank you! We will contact you soon.'); this.reset();}
  else{ alert('Please fill out all fields.'); }
});
</script>
</body>
</html>
