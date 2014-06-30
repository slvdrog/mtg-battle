class Api::V1::BattlesController < Api::V1::BaseController
  before_filter :load_battle, only: [:show, :update]

  def index
    @battles = Battle.all
    respond_with @battles
  end

  def create
    @battle = Battle.new(params)
    if @battle.save
      respond_with @battles, status: 200
    else
      render(json: {error: @battle.errors.full_messages.to_sentence}, status: 422)
    end
  end

  def show
    respond_with(@battle)
  end

  def update
   card  = Card.find(params[:vote])
    if @battle.vote(card.name)

    else

    end
  end

  private

  def load_battle
    @battle = Battle.find(params[:id])
  end
end