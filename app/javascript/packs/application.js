// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import 'bootstrap';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  // flatpickr(".date_form");

  initSweetalert('.delete-button', {
    title: "Are you sure?",
    text: "This action cannot be reversed",
    icon: "warning"
  }, (value) => {
    if (value?.dataset?.id) {
      console.log(value.dataset.id)
      const link = document.querySelector(`#listing_${value.dataset.id}`);
      link.click();
    }
  });
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
