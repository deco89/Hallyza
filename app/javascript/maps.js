function initMap() {
  var consultorio = { lat: -20.3113072085644, lng: -40.29105681684312 }; // Substitua pelas coordenadas reais
  var map = new google.maps.Map(document.getElementById("map"), {
    zoom: 15,
    center: consultorio,
  });
  var marker = new google.maps.Marker({
    position: consultorio,
    map: map,
    title: "Consultório Dra. Hállyza",
  });
}

// Garante que o script do Google Maps carregue corretamente
document.addEventListener("DOMContentLoaded", function () {
  if (document.getElementById("map")) {
    initMap();
  }
});

// Garante que a função `initMap` esteja disponível globalmente
window.initMap = initMap
