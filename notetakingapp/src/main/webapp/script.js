const brand = document.getElementsByClassName('brand');

brand.addEventListener('click', () => {
    // trigger confetti
    confetti({
        particleCount: 100,
        spread: 70,
        origin: { y: 0.6 }
    });

    // button animation
    brand.style.transform = 'scale(0.95)';
    setTimeout(() => {
        brand.style.transform = 'scale(1)';
    }, 100);
});