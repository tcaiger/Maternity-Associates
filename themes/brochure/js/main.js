// load map when the page loads
document.addEventListener('DOMContentLoaded', drawMap);

var map;

function drawMap() {
	console.log('map');
  	var storeLocation = { lat: -36.74, lng: 174.7022};


    var mapOptions = {

        center: { lat: -36.74, lng: 174.71},
        zoom: 12,
        scrollwheel: false,
        mapType: google.maps.MapTypeId.ROADMAP,
        draggable: true,
        zoomControl: false,
        streetViewControl: false,
        mapTypeControl: false,
        styles: [{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2e5d4"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":20}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]}]
    };

    map = new google.maps.Map(document.querySelector('#mat-map'), mapOptions);

    var marker = new google.maps.Marker({

        position: storeLocation,
        map: map,
        title: 'Maternity Associates'
    });


    var popupContent = "Maternity Associates";

    var infowindow = new google.maps.InfoWindow({
        content: popupContent,
        maxWidth: 200
    });

    google.maps.event.addListener(marker, 'click', function() {

       infowindow.open(map,marker);

    });
 };