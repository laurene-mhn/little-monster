import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-example-basic-multiple').select2({
    closeOnSelect: false
  });
};

export { initSelect2 };
