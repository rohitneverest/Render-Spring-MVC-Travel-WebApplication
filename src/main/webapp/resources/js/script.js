

let searchBtn = document.querySelector('#search-btn');
let searchBar = document.querySelector('.search-bar-container');
let formBtn = document.querySelector('#login-btn');
let loginForm = document.querySelector('.login-form-container');
let formClose = document.querySelector('#form-close');
let menu = document.querySelector('#menu-bar')
let navbar = document.querySelector('.navbar')

window.onscroll = () => {
    searchBtn.classList.remove('fa-times');
    searchBar.classList.remove('active');
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
    loginForm.classList.remove('active');
};

menu.addEventListener('click', () => {
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
});

searchBtn.addEventListener('click', () => {
                                              searchBtn.classList.toggle('fa-times');
                                              searchBar.classList.toggle('active');
                                          });

formBtn.addEventListener('click', () => {
    loginForm.classList.add('active');

});
formClose.addEventListener('click', () => {
    loginForm.classList.remove('active');

});








const backToTopBtn = document.getElementById("backToTopBtn");

function toggleBackToTop() {
    const scrollPosition =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;

    if (scrollPosition > 100) {   // reduced from 200 to 100
        backToTopBtn.style.display = "block";
    } else {
        backToTopBtn.style.display = "none";
    }
}

window.addEventListener("scroll", toggleBackToTop);
window.addEventListener("resize", toggleBackToTop);

if (backToTopBtn) {
    backToTopBtn.addEventListener("click", () => {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    });
}









