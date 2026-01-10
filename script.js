/* ————— MOBILE NAVIGATION ————— */

const menuBtn = document.querySelector(".menu-toggle");
const navLinks = document.querySelector(".navbar nav");

menuBtn?.addEventListener("click", () => {
  navLinks.classList.toggle("active");
  menuBtn.classList.toggle("open");
});

/* ————— SMOOTH SCROLL ————— */

document.querySelectorAll('a[href^="#"]').forEach(link => {
  link.addEventListener("click", (e) => {
    e.preventDefault();
    document.querySelector(link.getAttribute("href"))
      .scrollIntoView({ behavior: "smooth" });
  });
});

/* ————— LIGHT / DARK MODE ————— */

const toggleThemeBtn = document.getElementById("toggle-theme");
document.body.classList.toggle("light", localStorage.getItem("theme") === "light");

toggleThemeBtn.addEventListener("click", () => {
  document.body.classList.toggle("light");
  localStorage.setItem("theme", document.body.classList.contains("light") ? "light" : "dark");
});

/* ————— CUSTOM CURSOR ————— */

const cursor = document.getElementById("cursor");

document.addEventListener("mousemove", e => {
  cursor.style.top = e.clientY + "px";
  cursor.style.left = e.clientX + "px";
});

/* ————— EMAILJS FORM ————— */

if (window.emailjs) {
  emailjs.init("YOUR_PUBLIC_KEY"); // put your EmailJS public key here
}

const contactForm = document.getElementById("contact-form");

if (contactForm) {
  contactForm.addEventListener("submit", function (e) {
    e.preventDefault();

    const email = document.getElementById("email").value;
    const message = document.getElementById("message").value;

    emailjs.send("YOUR_SERVICE_ID", "YOUR_TEMPLATE_ID", {
      user_email: email,
      message: message
    })
    .then(() => {
      contactForm.innerHTML = `
        <h2>Message Sent 🎉</h2>
        <p>We’ll reply to <strong>${email}</strong> soon.</p>
      `;
    })
    .catch(err => alert("Oops! " + err.text));
  });
}

/* ————— SCROLL APPEAR ————— */

const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) entry.target.classList.add("visible");
  });
}, { threshold: 0.2 });

document.querySelectorAll(".fade-in").forEach(elem => {
  observer.observe(elem);
});
