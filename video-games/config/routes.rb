Rails.application.routes.draw do
  get '/' => 'tournaments#index'

  get '/api/tournaments.json' => 'tournaments#list'
  post '/api/tournaments' => 'tournaments#create'
  delete '/api/tournaments' => 'tournaments#destroy'
end
