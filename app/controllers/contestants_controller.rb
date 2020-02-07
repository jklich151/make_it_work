class ContestantsController < ApplicationController

  def create
    contestant = Contestant.new(contestant_params)
  end

  def show
    @contestant = Contestant.find(params[:id])
  end

  def index

  end

  private

    def contestant_params
      params.permit(:name, :age, :hometown, :years_of_experience)
    end
end
