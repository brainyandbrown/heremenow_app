console.log('loaded email sign-up');

$('form').on('submit', function(event) {
  event.preventDefault();
  console.log(event);

  $.ajax({
    url: "/emails",
    method: "POST",
    dataType: "json",
    data: {email: $('#email').val()}
  }).done(function(response) {
    console.log('ajax success!');
    console.log(response);
  }).fail(function(response) {
    console.log('ajax fail!');
    console.log(response);
  });

  $('#email').val('');
  $('<p>Thanks for signing up!</p>').appendTo(this);
});
