$(document).ready(function() {
  $('#address-input').on('submit', function(e) {
    e.preventDefault();
    var query = $('#address-input').serialize();
    var getImage = $.ajax({
      url: '/searches',
      type: 'POST',
      data: query
    });
    getImage.done(function(r) {
      $('#address-input').find("input[type=text]").val('');
      $('#original-img').html(r);
    });
  });
});
