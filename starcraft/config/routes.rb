Rails.application.routes.draw do

  get '/players/:player_id/matches' => 'players#index'
  get '/players/:player_id/matches/:faction' => 'players#faction'

end
