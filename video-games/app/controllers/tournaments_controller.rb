class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def list
    tournaments = Tournament.all
    render status: 200, json: tournaments
  end

  def create
    tournament = Tournament.create tournament_params
    render status: 201, json: tournament
  end

  def destroy
    tournament = Tournament.find(params[:id])
    id = params[:id]
    if tournament
      tournament.destroy
      render status:200, json: {id: id}
    else
      render status: 404, json: {error: "Tournament not found"}
    end
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end

end
