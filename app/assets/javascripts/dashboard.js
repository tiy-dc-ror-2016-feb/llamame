$( document ).ready(function() {

  $( "#followups-needed-btn" ).click(function() {
    $( "#followups-needed-panel" ).slideToggle( function() {
      $( "#recent-interactions-panel" ).hide();
    });
  });

  $( "#recent-interactions-btn" ).click(function() {
    $( "#recent-interactions-panel" ).slideToggle( function() {
      $( "#followups-needed-panel" ).hide();
    });
  });

});
