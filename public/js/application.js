$(document).ready(function() {
  $('#address-input').on('submit', function(e) {
    e.preventDefault();
    var query = $('#address-input').serialize();
    var saveImage = $.ajax({
      url: '/searches',
      type: 'POST',
      data: query
    });
  });
});
