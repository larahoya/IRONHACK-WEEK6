class PlayersController < ApplicationController

def index
  player = Player.find(params[:player_id])
  matches = player.show_won_matches
  render(json: matches)
end

def faction
  player = Player.find(params[:player_id])
  faction = params[:faction]
  matches = player.show_by_faction(faction)
  render(json: matches)
end

end
