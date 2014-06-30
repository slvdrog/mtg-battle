class Api::V1::SearchesController < Api::V1::BaseController

  def sets
    sets = MTGApi.get_set_info(params[:name])
    render json: sets
  end

  def cards
    a = MTGApi.new
    cards = a.get_cards(params[:name])
    render json: cards
  end

end