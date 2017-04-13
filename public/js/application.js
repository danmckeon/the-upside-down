$(document).ready(function() {
  $('#address-input').on('submit', function(e) {
    e.preventDefault();
    var getImage = $.ajax({
      url: '',
      type: 'GET',
    });
  });
});
