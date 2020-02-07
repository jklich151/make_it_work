class ChallengesController < ApplicationController

  def create
    Challenge.new(challenge_params)
  end




  private

    def challenge_params
      params.permit(:theme)
    end
end
