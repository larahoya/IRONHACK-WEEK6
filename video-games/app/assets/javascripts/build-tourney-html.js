function buildTourneyHtml (tournament) {
  return '\
    <div>\<li>\
      <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
    </li>\<button data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id + '">DELETE</button>\</div>\
  '
}
