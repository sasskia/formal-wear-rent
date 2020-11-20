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
// import "../plugins/flatpickr"

import flatpickr from "flatpickr";
import Swal from 'sweetalert2';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
  flatpickr(".datepicker", {});

  // First we define two variables that are going to grab our inputs field. You can check the ids of the inputs with the Chrome inspector.
  const startDateInput = document.getElementById('booking_start_date');
  const endDateInput = document.getElementById('booking_end_date');

  // Check that the query selector id matches the one you put around your form.
  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#listing-booking-dates').dataset.unavailable)
  endDateInput.disabled = true

  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    dateFormat: "Y-m-d",
  });

  startDateInput.addEventListener("change", (e) => {
    if (startDateInput != "") {
      endDateInput.disabled = false
    }
    flatpickr(endDateInput, {
      minDate: e.target.value,
      disable: unavailableDates,
      dateFormat: "Y-m-d"
      });
    })
  };

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

  const fakeConfirmButton = document.querySelector('.fake-confirm-button');
  const confirmButton = document.querySelector('.confirm-button');
  const fakeDeclineButton = document.querySelector('.fake-decline-button');
  const declineButton = document.querySelector('.decline-button');

  if (fakeConfirmButton) {
    fakeConfirmButton.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Are you sure you want to confirm?',
        showCancelButton: true,
        confirmButtonText: `Yes`,
      }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          confirmButton.click();
        }
      })
    });

    fakeDeclineButton.addEventListener("click", (event) => {
      event.preventDefault();
      Swal.fire({
        title: 'Are you sure you want to decline?',
        showCancelButton: true,
        confirmButtonText: `Yes`,
      }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          declineButton.click();
        }
      })
    });
  }

});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "controllers"
