<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css"
      rel="stylesheet"
    />
   
    <title>rooms</title>
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
            <label for="arrival">Arrival Date</label>
            <input type="text" placeholder="Your Arrival Date" />
          </div>
          <div class="input__group">
            <label for="departure">Departure Date</label>
            <input type="text" placeholder="Your Departure Date" />
          </div>
          <div class="input__group">
            <label for="guests">Guests</label>
            <input type="text" placeholder="No Of Guests" />
          </div>
          <button class="btn">Check Availability</button>
        </form>
      </div>
    </section>

    <section class="about" id="about">
      <div class="section__container about__container">
        <div class="about__grid">
          <div class="about__image">
            <img src="assets/about-1.jpg" alt="about" />
          </div>
          <div class="about__card">
            <span><i class="ri-user-line"></i></span>
            <h4>Strong Team</h4>
            <p>
              Unlocking Hospitality Excellence And Ensures Your Perfect Stay
            </p>
          </div>
          <div class="about__image">
            <img src="assets/about-2.jpg" alt="about" />
          </div>
          <div class="about__card">
            <span><i class="ri-calendar-check-line"></i></span>
            <h4>Luxury Room</h4>
            <p>Experience Unrivaled Luxury at Our Exquisite Luxury Rooms</p>
          </div>
        </div>
        <div class="about__content">
          <p class="section__subheader">ABOUT US</p>
          <h2 class="section__header">Discover Our Underground</h2>
          <p class="section__description">
            Welcome to a hidden realm of extraordinary accommodations where
            luxury, comfort, and adventure converge. Our underground hotels
            offer an unparalleled escape from the ordinary, inviting you to
            explore a subterranean world of wonders.
          </p>
          <button class="btn">Book Now</button>
        </div>
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

    <section class="intro">
      <div class="section__container intro__container">
        <div class="intro__cotent">
          <p class="section__subheader">INTRO VIDEO</p>
          <h2 class="section__header">Meet With Our Luxury Place</h2>
          <p class="section__description">
            Whether you're seeking a cozy and exclusive hideaway or an immersive
            journey beneath the surface, Hotel Miranda promises to be an
            unforgettable stay, where the depths of comfort and excitement await
            your arrival.
          </p>
          <button class="btn">Book Now</button>
        </div>
        <div class="intro__video">
          <video src="assets/luxury.mp4" autoplay muted loop></video>
        </div>
      </div>
    </section>

    <section class="section__container feature__container" id="feature">
      <p class="section__subheader">FACILITIES</p>
      <h2 class="section__header">Core Features</h2>
      <div class="feature__grid">
        <div class="feature__card">
          <span><i class="ri-thumb-up-line"></i></span>
          <h4>Have High Rating</h4>
          <p>
            We take pride in curating a selection of hotels that consistently
            receive high ratings and positive reviews.
          </p>
        </div>
        <div class="feature__card">
          <span><i class="ri-time-line"></i></span>
          <h4>Quite Hours</h4>
          <p>
            We understand that peace and uninterrupted rest are essential for a
            rejuvenating experience.
          </p>
        </div>
        <div class="feature__card">
          <span><i class="ri-map-pin-line"></i></span>
          <h4>Best Location</h4>
          <p>
            At our hotel booking website, we take pride in offering
            accommodations in the most prime and sought-after locations.
          </p>
        </div>
        <div class="feature__card">
          <span><i class="ri-close-circle-line"></i></span>
          <h4>Free Cancellation</h4>
          <p>
            We understand that travel plans can change unexpectedly, which is
            why we offer the flexibility of free cancellation.
          </p>
        </div>
        <div class="feature__card">
          <span><i class="ri-wallet-line"></i></span>
          <h4>Payment Options</h4>
          <p>
            Our hotel booking website offers a range of convenient payment
            options to suit your preferences.
          </p>
        </div>
        <div class="feature__card">
          <span><i class="ri-coupon-line"></i></span>
          <h4>Special Offers</h4>
          <p>
            Whether you're planning a romantic getaway, or a business trip, our
            carefully curated special offers cater to all your needs.
          </p>
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
        <div class="menu__images">
          <img src="assets/menu-7.jpg" alt="menu" />
          <img src="assets/menu-8.jpg" alt="menu" />
          <img src="assets/menu-9.jpg" alt="menu" />
        </div>
        <ul class="menu__banner">
          <li>
            <span><i class="ri-file-text-line"></i></span>
            <h4>84k</h4>
            <p>Projects are Completed</p>
          </li>
          <li>
            <span><i class="ri-user-line"></i></span>
            <h4>10M</h4>
            <p>Active Around World</p>
          </li>
          <li>
            <span><i class="ri-function-line"></i></span>
            <h4>02k</h4>
            <p>Categories Served</p>
          </li>
          <li>
            <span><i class="ri-lightbulb-flash-line"></i></span>
            <h4>100M</h4>
            <p>Ideas Raised Funds</p>
          </li>
        </ul>
      </div>
    </section>

    <section class="section__container news__container" id="news">
      <div class="news__header">
        <div>
          <p class="section__subheader">BLOG</p>
          <h2 class="section__header">News Feeds</h2>
        </div>
        <div class="section__nav">
          <span><i class="ri-arrow-left-line"></i></span>
          <span><i class="ri-arrow-right-line"></i></span>
        </div>
      </div>
      <div class="news__grid">
        <div class="news__card">
          <img src="assets/news-1.jpg" alt="news" />
          <div class="news__card__title">
            <p>25th March 2022</p>
            <p>By Emily</p>
          </div>
          <h4>Exploring Local Culinary Gems: A Foodie's Guide.</h4>
          <p>
            Join Emily as she takes you on a gastronomic adventure through the
            neighborhood surrounding our hotel.
          </p>
        </div>
        <div class="news__card">
          <img src="assets/news-2.jpg" alt="news" />
          <div class="news__card__title">
            <p>15th June 2022</p>
            <p>By David</p>
          </div>
          <h4>Balancing Mind, Body, and Soul at Our Hotel.</h4>
          <p>
            Discover holistic spa treatments, fitness facilities, and
            mindfulness practices that will leave you feeling refreshed.
          </p>
        </div>
        <div class="news__card">
          <img src="assets/news-3.jpg" alt="news" />
          <div class="news__card__title">
            <p>08th August 2022</p>
            <p>By Sarah</p>
          </div>
          <h4>Exploring Outdoor Activities Near Our Hotel.</h4>
          <p>
            From hiking and biking trails to water sports and wildlife
            encounters, she highlights ways to experience nature's wonders.
          </p>
        </div>
      </div>
    </section>

    <footer class="footer">
      <div class="section__container footer__container">
        <div class="footer__col">
          <div class="logo footer__logo">
            <div>H</div>
            <span>HOTEL<br />MIRANDA</span>
          </div>
          <p class="section__description">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil,
            laudantium unde. Doloremque eaque debitis laborum labore voluptates
            iste molestiae consectetur.
          </p>
          <ul class="footer__socials">
            <li>
              <a href="#"><i class="ri-youtube-fill"></i></a>
            </li>
            <li>
              <a href="#"><i class="ri-instagram-line"></i></a>
            </li>
            <li>
              <a href="#"><i class="ri-facebook-fill"></i></a>
            </li>
            <li>
              <a href="#"><i class="ri-linkedin-fill"></i></a>
            </li>
          </ul>
        </div>
        <div class="footer__col">
          <h4>Services</h4>
          <div class="footer__links">
            <li><a href="#">Online Booking</a></li>
            <li><a href="#">Room Customization</a></li>
            <li><a href="#">Virtual Tours</a></li>
            <li><a href="#">Special Offers</a></li>
            <li><a href="#">Concierge Services</a></li>
            <li><a href="#">Customer Support</a></li>
          </div>
        </div>
        <div class="footer__col">
          <h4>Contact Us</h4>
          <div class="footer__links">
            <li>
              <span><i class="ri-phone-fill"></i></span>
              <div>
                <h5>Phone Number</h5>
                <p>+91 9876543210</p>
              </div>
            </li>
            <li>
              <span><i class="ri-record-mail-line"></i></span>
              <div>
                <h5>Email</h5>
                <p>info@hotelmiranda.com</p>
              </div>
            </li>
            <li>
              <span><i class="ri-map-pin-2-fill"></i></span>
              <div>
                <h5>Location</h5>
                <p>First St. NYC</p>
              </div>
            </li>
          </div>
        </div>
      </div>
      <div class="footer__bar">
        Copyright © 2023 Web Design Mastery. All rights reserved.
      </div>
    </footer>

    <script src="https://unpkg.com/scrollreveal"></script>
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