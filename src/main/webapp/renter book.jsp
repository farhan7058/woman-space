<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />
   
    <title>renter book room</title>
  </head>
   <style>
  @import url("https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700;800&family=Poppins:wght@400;500;600;700&display=swap");

:root {
  --primary-color: #0f1a2c;
  --secondary-color: #f6ac0f;
  --text-dark: #0f172a;
  --text-light: #64748b;
  --extra-light: #f8fafc;
  --white: #ffffff;
  --max-width: 1200px;
  --header-font: "Playfair Display", serif;
}

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

.section__container {
  max-width: var(--max-width);
  margin: auto;
  padding: 5rem 1rem;
}

.section__subheader {
  margin-bottom: 0.5rem;
  font-size: 1rem;
  font-weight: 500;
  color: var(--text-light);
}

.section__header {
  font-size: 3rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--text-dark);
}

.section__description {
  margin-top: 1rem;
  color: var(--text-light);
}

.btn {
  padding: 0.75rem 2rem;
  font-size: 1rem;
  color: var(--white);
  background-color: var(--secondary-color);
  outline: none;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.section__nav {
  margin-left: auto;
  display: flex;
  align-items: center;
  gap: 1rem;
}

.section__nav span {
  padding: 10px 15px;
  font-size: 1.25rem;
  border-radius: 2px;
  cursor: pointer;
  transition: 0.3s;
}

.section__nav span:hover {
  background-color: var(--secondary-color);
}

.logo {
  display: flex;
  align-items: center;
  gap: 10px;
  font-weight: 500;
  color: var(--text-light);
  letter-spacing: 2px;
}

.logo div {
  padding-inline: 12px;
  font-size: 2rem;
}

img,
video {
  width: 100%;
  display: flex;
}

a {
  text-decoration: none;
}

html,
body {
  scroll-behavior: smooth;
}

body {
  font-family: "Poppins", sans-serif;
}

nav {
  position: fixed;
  isolation: isolate;
  width: 100%;
  z-index: 9;
}

.nav__bar {
  position: relative;
  isolation: isolate;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.nav__header {
  padding: 1rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background-color: var(--extra-light);
}

.nav__menu__btn {
  font-size: 1.5rem;
  color: var(--text-dark);
  cursor: pointer;
}

.nav__links {
  list-style: none;
  position: absolute;
  padding: 2rem;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 2rem;
  background-color: var(--white);
  transform: translateY(-100%);
  transition: 0.5s;
  z-index: -1;
}

.nav__links.open {
  transform: translateY(0);
}

.nav__links a {
  color: var(--text-light);
  transition: 0.3s;
}

.nav__links a:hover {
  color: var(--secondary-color);
}

.header {
  padding-block: 5rem;
  background-image: linear-gradient(
      rgba(15, 26, 44, 0.5),
      rgba(15, 26, 44, 0.5)
    ),
    url("assets/header.jpg");
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;
}

.header__container .section__subheader {
  color: var(--white);
}

.header__container h1 {
  margin-bottom: 2rem;
  font-size: 6rem;
  font-weight: 800;
  line-height: 7rem;
  font-family: var(--header-font);
  color: var(--white);
}

.booking {
  background-color: var(--primary-color);
}

.booking__container form {
  max-width: 350px;
  margin: auto;
  display: grid;
  gap: 2rem;
}

.input__group {
  display: grid;
  gap: 1rem;
}

.input__group label {
  font-weight: 600;
  color: var(--white);
}

.input__group input {
  width: 100%;
  font-size: 1rem;
  padding: 0.5rem;
  color: var(--white);
  background-color: transparent;
  outline: none;
  border: none;
  border-bottom: 1px solid var(--text-light);
  border-radius: 5px;
}

.input__group input::placeholder {
  color: var(--text-light);
}

.about {
  position: relative;
  isolation: isolate;
}

.about::before {
  position: absolute;
  content: "";
  bottom: 0;
  right: 0;
  height: 75%;
  width: 100%;
  background-image: url("assets/about-bg.jpg");
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
  opacity: 0.05;
  z-index: -1;
}

.about__container {
  display: grid;
  gap: 4rem 2rem;
}

.about__grid {
  display: grid;
  gap: 1rem;
}

.about__card {
  height: 100%;
  padding: 2rem;
  display: grid;
  place-content: center;
  text-align: center;
}

.about__card span {
  margin-bottom: 1rem;
  font-size: 3rem;
  color: var(--secondary-color);
}

.about__card h4 {
  margin-bottom: 1rem;
  font-size: 1.5rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--text-dark);
}

.about__card p {
  color: var(--text-light);
}

.about__card:nth-child(4) {
  background-color: var(--primary-color);
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.about__card:nth-child(4) :is(h4, p) {
  color: var(--white);
}

.about__image img {
  height: 100%;
  object-fit: cover;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.about__content .section__description {
  margin-bottom: 2rem;
}

.room__container {
  padding-block: 5rem;
}

.room__container :is(.section__subheader, .section__header) {
  padding-inline: 1rem;
  text-align: center;
}

.room__grid {
  max-width: 1500px;
  margin-inline: auto;
  margin-top: 4rem;
  display: grid;
  gap: 0 1rem;
}

.room__card img {
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.room__card__details {
  margin-inline: 1rem;
  padding: 1rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  background-color: var(--white);
  transform: translateY(-50%);
  border-radius: 5px;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.room__card__details h4 {
  margin-bottom: 0.5rem;
  font-size: 1.2rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--text-dark);
}

.room__card__details p {
  color: var(--text-light);
}

.room__card__details h3 {
  font-size: 1.2rem;
  font-weight: 600;
  color: var(--secondary-color);
}

.room__card__details h3 span {
  font-size: 0.8rem;
}

.intro {
  position: relative;
  isolation: isolate;
  background-color: var(--primary-color);
}

.intro::before {
  position: absolute;
  content: "";
  right: 0;
  height: 100%;
  width: calc(100vw / 4);
  background-color: var(--secondary-color);
  z-index: -1;
}

.intro__container {
  display: grid;
  gap: 4rem 2rem;
}

.intro__container .section__subheader {
  color: var(--secondary-color);
}

.intro__container :is(.section__header, .section__description) {
  margin-bottom: 1rem;
  color: var(--white);
}

.intro__video {
  max-width: 450px;
  margin: auto;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.feature__container :is(.section__subheader, .section__header) {
  text-align: center;
}

.feature__grid {
  margin-top: 4rem;
  display: grid;
  gap: 2rem;
}

.feature__card span {
  display: inline-block;
  margin-bottom: 0.5rem;
  font-size: 2.5rem;
  color: var(--secondary-color);
}

.feature__card h4 {
  margin-bottom: 1rem;
  font-size: 1.25rem;
  font-weight: 800;
  font-family: var(--header-font);
  counter-reset: var(--text-dark);
}

.feature__card p {
  color: var(--text-light);
}

.menu {
  background-color: var(--extra-light);
}

.menu__header {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.menu__items {
  list-style: none;
  margin-block: 4rem;
  display: grid;
  gap: 1rem 4rem;
}

.menu__items li {
  display: flex;
  align-items: center;
  gap: 1rem;
  cursor: pointer;
  transition: 0.3s;
}

.menu__items li:hover {
  background-color: var(--primary-color);
}

.menu__items img {
  max-width: 100px;
  border-radius: 2px;
}

.menu__items h4 {
  margin-bottom: 0.5rem;
  font-size: 1.25rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--text-dark);
  transition: 0.3s;
}

.menu__items p {
  max-width: 400px;
  color: var(--text-light);
  transition: 0.3s;
}

.menu__items li:hover :is(h4, p) {
  color: var(--white);
}

.menu__images {
  margin-bottom: 4rem;
  display: grid;
  gap: 1rem;
}

.menu__images img {
  border-radius: 5px;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.menu__banner {
  list-style: none;
  padding: 4rem 2rem;
  display: grid;
  gap: 2rem;
  text-align: center;
  background-color: var(--primary-color);
  border-radius: 5px;
}

.menu__banner span {
  font-size: 3.5rem;
  color: var(--secondary-color);
}

.menu__banner h4 {
  font-size: 2.5rem;
  font-weight: 700;
  color: var(--white);
}

.menu__banner p {
  color: var(--text-light);
}

.news__header {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.news__grid {
  margin-top: 4rem;
  display: grid;
  gap: 2rem 1rem;
}

.news__card img {
  margin-bottom: 2rem;
  border-radius: 5px;
  box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}

.news__card__title {
  margin-bottom: 0.5rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.news__card__title p {
  font-weight: 500;
  color: var(--text-light);
}

.news__card h4 {
  margin-bottom: 1rem;
  font-size: 1.25rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--text-dark);
}

.news__card p {
  color: var(--text-light);
}

.footer {
  background-color: var(--primary-color);
}

.footer__container {
  display: grid;
  gap: 4rem 2rem;
}

.footer__logo {
  margin-bottom: 2rem;
  color: var(--white);
}

.footer__logo div {
  background-color: var(--secondary-color);
}

.footer__socials {
  list-style: none;
  margin-top: 2rem;
  display: flex;
  align-items: center;
  gap: 1rem;
}

.footer__socials a {
  padding: 6px 10px;
  font-size: 1.25rem;
  color: var(--text-light);
  background-color: var(--white);
  border-radius: 100%;
  cursor: pointer;
  transition: 0.3s;
}

.footer__socials a:hover {
  color: var(--white);
  background-color: var(--secondary-color);
}

.footer__col h4 {
  margin-bottom: 2rem;
  font-size: 1.25rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--white);
}

.footer__links {
  list-style: none;
}

.footer__links li {
  margin-bottom: 1rem;
  display: flex;
  align-items: center;
  gap: 1rem;
}

.footer__links a {
  color: var(--text-light);
  transition: 0.3s;
}

.footer__links a:hover {
  color: var(--secondary-color);
}

.footer__col:last-child .footer__links li {
  margin-bottom: 2rem;
}

.footer__links span {
  font-size: 2rem;
  color: var(--secondary-color);
}

.footer__links h5 {
  margin-bottom: 0.5rem;
  font-size: 1rem;
  font-weight: 800;
  font-family: var(--header-font);
  color: var(--white);
}

.footer__links p {
  color: var(--text-light);
}

.footer__bar {
  padding: 1rem;
  font-size: 0.8rem;
  color: var(--text-light);
  text-align: center;
}

@media (width > 480px) {
  .about__grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .about__image:nth-child(1) {
    grid-area: 1/2/2/3;
  }

  .about__image:nth-child(1),
  .about__card:nth-child(4) {
    transform: translateY(2rem);
  }

  .feature__grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .menu__images {
    grid-template-columns: repeat(2, 1fr);
  }

  .menu__banner {
    grid-template-columns: repeat(2, 1fr);
  }

  .news__grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .footer__container {
    grid-template-columns: repeat(2, 1fr);
  }

  .footer__col:first-child {
    grid-column: 1/3;
  }
}

@media (width > 768px) {
  nav {
    position: static;
    padding-inline: 1rem;
    background-color: var(--primary-color);
  }

  .nav__bar {
    max-width: var(--max-width);
    margin: auto;
    padding: 1rem 2rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color: var(--white);
    border-radius: 5px;
    transform: translateY(50%);
  }

  .nav__header {
    padding: 0;
    background-color: transparent;
  }

  .nav__menu__btn {
    display: none;
  }

  .nav__links {
    width: fit-content;
    padding: 0;
    position: static;
    flex-direction: row;
    transform: none;
    background-color: transparent;
  }

  .booking__container form {
    max-width: 100%;
    grid-template-columns: repeat(4, 1fr);
    align-items: center;
  }

  .about::before {
    height: 75%;
    width: 75%;
  }

  .about__container {
    grid-template-columns: repeat(2, 1fr);
    align-items: center;
  }

  .room__grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .intro__container {
    grid-template-columns: repeat(2, 1fr);
    align-items: center;
  }

  .feature__grid {
    grid-template-columns: repeat(3, 1fr);
  }

  .menu__header {
    flex-direction: row;
  }

  .menu__items {
    grid-template-columns: repeat(2, 1fr);
  }

  .menu__images {
    grid-template-columns: repeat(3, 1fr);
  }

  .menu__banner {
    grid-template-columns: repeat(4, 1fr);
  }

  .news__header {
    flex-direction: row;
  }

  .news__grid {
    grid-template-columns: repeat(3, 1fr);
  }

  .footer__container {
    grid-template-columns: 2fr repeat(2, 1fr);
  }

  .footer__col:first-child {
    grid-column: unset;
  }
}

@media (width > 1024px) {
  .about__grid {
    gap: 2rem;
  }

  .room__grid {
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
  }

  .menu__images {
    gap: 2rem;
  }

  .news__grid {
    gap: 2rem;
  }



  /* Style for the list container */
  .scrollable-list {
    max-height: 200px; 
    overflow-y: auto; 
    border: 1px solid #ccc; 
    padding: 5px; /* Optional: Add some padding */
  }
  
  
 .scrollable-list li {
    margin: 5px 0;
    padding: 5px;
    background: #f4f4f4;
    border-radius: 3px;
    cursor: pointer; 
  }
  .scrollable-list li:hover {
    background:rgb(239, 202, 51);
  }

  </style>
  
  
  
  
  <body>
    <nav>
      <div class="nav__bar">
        <div class="nav__header">
          <div class="logo nav__logo">
            <div>W</div>
            <span>WOMAN<br />SPACE</span>
          </div>
          <div class="nav__menu__btn" id="menu-btn">
            <i class="ri-menu-line"></i>
          </div>
        </div>
        <ul class="nav__links" id="nav-links">
          <li><a href="ower loging.jsp">Home</a></li>
          <li><a href="renter loging.jsp">About</a></li>
          <li><a href="#room">Room</a></li>
          <li><a href="home.jsp">Feature</a></li>
          <li><a href="#menu">Menu</a></li>
          <li><a href="#news">News</a></li>
        </ul>
      </div>
    </nav>

    <header class="header" id="home">
      <div class="section__container header__container">
        <p class="section__subheader">ABOUT US</p>
        <h1>The Perfect<br />Base For Woman</h1>
        <button class="btn" >Take A Tour</button>
      </div>
    </header>

    <section class="booking">
      <div class="section__container booking__container">
        <form action="/">
          <div class="input__group">
            <label for="arrival">Chack In Date</label>
            <input type="datetime-local" placeholder="Your Arrival Date" />
          </div>
          <div class="input__group">
            <label for="departure">Chack Out Date</label>
            <input type="datetime-local" placeholder="Your Departure Date" />
          </div>
          </form>
          <form action="" style="margin-top:8rem">
            <p class="d-inline-flex gap-1">
  <a class="btn btn-primary"   data-bs-toggle="collapse" href="#cities" role="button" aria-expanded="false" aria-controls="cities">
    Cities
  </a>
  </p>
  
   <div class="collapse" id="cities">
  <div class="card card-body">
      
<div class="scrollable-list">
  <ul id="myList">
    <!-- List items with onclick attribute -->
    <li onclick="getValue(this)">Mumbai</li>
    <li onclick="getValue(this)">Hydrabad</li>
    <li onclick="getValue(this)">Kolkata</li>
    <li onclick="getValue(this)">Chennai</li>
    <li onclick="getValue(this)">Jaipur</li>
    <li onclick="getValue(this)">Delhi</li>
    <li onclick="getValue(this)">Bengaluru</li>
    <li onclick="getValue(this)">Panji</li>
    <li onclick="getValue(this)">Ahmadabad</li>
    <li onclick="getValue(this)">Mohali</li>
    <li onclick="getValue(this)">Ranchi</li>
    <li onclick="getValue(this)">Pune</li>
    <!-- Add more items as needed -->
  </ul>
</div>
      
     </div>
     </div> 
     </form>
  
  
  <form action="" style="margin-top:8rem">
  
  
         <p class="d-inline-flex gap-1">
  <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample2">
    Profile
  </a>
  </p>
 
<div class="collapse" id="collapseExample2">
  <div class="card card-body">
    
  <div class="form-group">
    <label for="Interest">Interest</label>
    <input type="text" class="form-control" id="Interest" aria-describedby="Interest" placeholder="Enter Interest">
  </div>
 <div class="form-group">
    <label for="Hobbies">Hobbies</label>
    <input type="text" class="form-control" id="Hobbies" aria-describedby="Hobbies" placeholder="Enter Hobbies">
  </div>
 <div class="form-group">
    <label for="Mobile">Mobile </label>
    <input type="number" class="form-control" id="Mobile" aria-describedby="Mobile" placeholder="Enter Mobile">
  </div>
  <div class="form-group">
    <label for="Age">Age</label>
    <input type="number" class="form-control" id="Age" aria-describedby="Age" placeholder="Enter Age">
  </div>
  
  <div class="form-group">
    <label for="Smoking">Smoking</label>
    <input type="text" class="form-control" id="Smoking" aria-describedby="Smoking" placeholder="Smoking Yes Or NO">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
   
    
  </div>
</div>
       </form>

      </div>
      
    </section>

    

    <section class="room__container" id="room">
      <p class="section__subheader">ROOMS</p>
      <h2 class="section__header">Hand Picked Rooms</h2>
      <div class="room__grid">
        <div class="room__card">
          <img src="assets/room-1.jpg" alt="room" />
          <div class="room__card__details">
            <div>
              <h4>Deluxe Suite</h4>
              <p>Well-appointed rooms designed for guests who desire a more.</p>
            </div>
            <h3>$399<span>/night</span></h3>
          </div>
        </div>
        <div class="room__card">
          <img src="assets/room-2.jpg" alt="room" />
          <div class="room__card__details">
            <div>
              <h4>Family Suite</h4>
              <p>Consist of multiple rooms and a common living area.</p>
            </div>
            <h3>$599<span>/night</span></h3>
          </div>
        </div>
        <div class="room__card">
          <img src="assets/room-3.jpg" alt="room" />
          <div class="room__card__details">
            <div>
              <h4>Luxury Penthouse</h4>
              <p>
                Top-tier accommodations usually on the highest floors of a
                hotel.
              </p>
            </div>
            <h3>$799<span>/night</span></h3>
          </div>
        </div>
      </div>
    </section>

    

    <section class="menu" id="menu">
      <div class="section__container menu__container">
        <div class="menu__header">
          <div>
            <p class="section__subheader">MENU</p>
            <h2 class="section__header">Our Food Menu</h2>
          </div>
          <div class="section__nav">
            <span><i class="ri-arrow-left-line"></i></span>
            <span><i class="ri-arrow-right-line"></i></span>
          </div>
        </div>
        <ul class="menu__items">
          <li>
            <img src="assets/menu-1.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Fggs & Bacon</h4>
              <p>
                It is a culinary innovation that puts a unique spin on the
                beloved breakfast combination.
              </p>
            </div>
          </li>
          <li>
            <img src="assets/menu-2.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Tea or Coffee</h4>
              <p>
                A classic choice for your daily dose of comfort and calmness.
              </p>
            </div>
          </li>
          <li>
            <img src="assets/menu-3.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Chia Oatmeal</h4>
              <p>
                Our Chia Oatmeal is a wholesome nutrient-packed breakfast
                delight.
              </p>
            </div>
          </li>
          <li>
            <img src="assets/menu-4.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Fruit Parfait</h4>
              <p>
                Our Fruit Parfait is a delightful culinary masterpiece of
                freshness and flavor.
              </p>
            </div>
          </li>
          <li>
            <img src="assets/menu-5.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Marmalade Selection</h4>
              <p>
                Our Marmalade Selection is a delectable medley of vibrant,
                handcrafted citrus preserves.
              </p>
            </div>
          </li>
          <li>
            <img src="assets/menu-6.jpg" alt="menu" />
            <div class="menu__details">
              <h4>Cheese Plate</h4>
              <p>
                Our cheese plate is a masterpiece that celebrates rich and
                diverse world of cheeses.
              </p>
            </div>
          </li>
        </ul>
        
      </div>
    </section>

   

  <footer class="footer">
      <div class="section__container footer__container">
        <div class="footer__col">
          <div class="logo footer__logo">
            <div>W</div>
            <span>WOMAN<br />SPACE</span>
          </div>
            
          <h4>She Share</h4>
          <div class="footer__links">
           <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career Us</a></li>
            <li><a href="#">Contact Us </a></li>
            <li><a href="#">Follow Us</a></li>
            </ul>
        </div>
        </div>
        
        <div class="footer__col">
          <h4>Support</h4>
          <div class="footer__links">
          <ul>
            <li><a href="#">FAQs</a></li>
            <li><a href="#">Cancellation Policy</a></li>
          </ul>
          </div>
        </div>
         <div class="footer__col">
          <h4>Become a Host</h4>
          <div class="footer__links">
          <ul>
            <li><a href="#">Hosting Resource</a></li>
            <li><a href="#">Hosting Responsibility</a></li>
              <li><a href="#">Share A Room</a></li>
                <li><a href="#">Pets</a></li>
          </ul>
          </div>
        </div>
       <div class="footer__col">
          <h4>Term And Policy</h4>
          <div class="footer__links">
           <ul>
            <li><a href="#">Term And Condition</a></li>
            <li><a href="#">Privacy policy</a></li>
             </ul>
          
          </div>
        </div>
      </div>
      <div class="footer__bar">
        Copyright © 2023 Web Design Mastery. All rights reserved.
      </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    <script src="https://unpkg.com/scrollreveal"></script>GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
   
   
   <script>
  function getValue(element) {
    var value = element.textContent; // Get the text content of the clicked element
    alert("Clicked value: " + value);
  }
</script>
    <script>
    const menuBtn = document.getElementById("menu-btn");
    const navLinks = document.getElementById("nav-links");
    const menuBtnIcon = menuBtn.querySelector("i");

    menuBtn.addEventListener("click", (e) => {
      navLinks.classList.toggle("open");

      const isOpen = navLinks.classList.contains("open");
      menuBtnIcon.setAttribute("class", isOpen ? "ri-close-line" : "ri-menu-line");
    });

    navLinks.addEventListener("click", (e) => {
      navLinks.classList.remove("open");
      menuBtnIcon.setAttribute("class", "ri-menu-line");
    });

    const scrollRevealOption = {
      distance: "50px",
      origin: "bottom",
      duration: 1000,
    };

    // header container
    ScrollReveal().reveal(".header__container .section__subheader", {
      ...scrollRevealOption,
    });

    ScrollReveal().reveal(".header__container h1", {
      ...scrollRevealOption,
      delay: 500,
    });

    ScrollReveal().reveal(".header__container .btn", {
      ...scrollRevealOption,
      delay: 1000,
    });

    // room container
    ScrollReveal().reveal(".room__card", {
      ...scrollRevealOption,
      interval: 500,
    });

    // feature container
    ScrollReveal().reveal(".feature__card", {
      ...scrollRevealOption,
      interval: 500,
    });

    // news container
    ScrollReveal().reveal(".news__card", {
      ...scrollRevealOption,
      interval: 500,
    });</script>
  </body>
</html>