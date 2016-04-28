console.log('Im on the dashboard page!')

var myButton = $( "#upcoming-followups-btn" );

console.log(myButton);

$("#body").on("click", "#test", function() {
  console.log('hi')
});

$( "#upcoming-followups-btn" ).click(function() {
  alert('hi');
});
