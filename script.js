// Inisialisasi peta menggunakan Leaflet
var map = L.map('map').setView([-6.200000, 106.816666], 13);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

L.marker([-6.200000, 106.816666]).addTo(map)
    .bindPopup('Kantor Edukasi IT')
    .openPopup();

// Menangani perubahan latar belakang navbar saat di-scroll
$(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
        $('.navbar').addClass('bg-dark');
    } else {
        $('.navbar').removeClass('bg-dark');
    }
});
