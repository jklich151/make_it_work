class ChallengeController < ApplicationController

  def create
    challenge = Challenge.new(challenge_params)
  end




  private

    def challenge_params
      params.permit(:theme)
    end
end
