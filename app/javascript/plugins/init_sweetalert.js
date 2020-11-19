import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  swalButton.forEach((btn) => {
    btn.addEventListener('click', (event) => {
      swal(options).then(callback.bind(this, event.currentTarget)); // <-- add the `.then(callback)`
    });
  })
};

export { initSweetalert };
