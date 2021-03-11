// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import mapboxgl from 'mapbox-gl';
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
// const injectCoordinates = (coordinates) => {
//   const paragraphElement = document.getElementById('coordinates');
//   paragraphElement.innerText = `${coordinates.lat}, ${coordinates.lng}`;
// };

// const injectMap = (coordinates) => {
//   const lng = coordinates.lng;
//   const lat = coordinates.lat;

  const mapDiv = document.getElementById('map');
  mapDiv.innerHTML = '';

//   mapboxgl.accessToken = 'pk.eyJ1IjoiZ29sZGVuZWFnbGVzMzMzIiwiYSI6ImNrbGtwcWNuMTI0ZmgydnByanQwYzJtYWMifQ.m5n7IkJitqxnmwfcfHTLAw';
//   const map = new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v9',
//     center: [lng, lat],
//     zoom: 12
//   });
//   new mapboxgl.Marker()
//     .setLngLat([lng, lat])
//     .addTo(map);
// };

// const formElement = document.getElementById('searchForm');
// Window.addEventListener('DOMContentLoaded', (event) => {
  // prevent form's default behavior
  // event.preventDefault();

  // get input value
  // const address = document.getElementById('address').value;
  const mapboxKey = 'pk.eyJ1IjoiZ29sZGVuZWFnbGVzMzMzIiwiYSI6ImNrbGtwcWNuMTI0ZmgydnByanQwYzJtYWMifQ.m5n7IkJitqxnmwfcfHTLAw';
  // trigger request to Google Maps API
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/marseille.json?access_token=${mapboxKey}`)
    .then(response => response.json())
    .then((data) => {
      // const coordinates = {
      //   lng: data.features[0].geometry.coordinates[0],
      //   lat: data.features[0].geometry.coordinates[1]
      // };
    mapboxgl.accessToken = 'pk.eyJ1IjoiZ29sZGVuZWFnbGVzMzMzIiwiYSI6ImNrbGtwcWNuMTI0ZmgydnByanQwYzJtYWMifQ.m5n7IkJitqxnmwfcfHTLAw';
    const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [data.features[0].geometry.coordinates[0], data.features[0].geometry.coordinates[1]],
    zoom: 12
  });
//   new mapboxgl.Marker()
//     .setLngLat([lng, lat])
//     .addTo(map);
});
});
