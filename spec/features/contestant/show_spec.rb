require 'rails_helper'

RSpec.describe "contestant show page" do
  it "shows the contestant info" do
    contestant_1 = Contestant.create(name: "Jay",
                                    age: "27",
                                    hometown: "Queens, NY",
                                    years_of_experience: 4)
  end
end
