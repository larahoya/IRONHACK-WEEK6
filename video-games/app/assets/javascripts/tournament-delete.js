function deleteTournament(event) {
  var tournamentId = event.currentTarget.value;
  console.log(tournamentId);
  var request = $.ajax({
    url: '/api/tournaments',
    type: 'DELETE',
    data: {id: tournamentId},
    success: function(response) {
      console.log(response);
      var id = response.id;
      $('[value="'+ id + '"]').parent().remove();
    }
  })
}