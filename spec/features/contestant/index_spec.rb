require 'rails_helper'

RSpec.describe "contestants index page" do
  it "can see all contestants and their projects" do
    contestant_1 = Contestant.create(name: "Jay",
                                    age: "27",
                                    hometown: "Queens, NY",
                                    years_of_experience: 4,
                                    projects: "Litfit")
    contestant_2 = Contestant.create(name: "Kay",
                                    age: "28",
                                    hometown: "Atlanta, GA",
                                    years_of_experience: 6,
                                    projects: "Litfit")
    visit "/contestants"

    expect(page).to have_content(contestant_1.name)
    expect(page).to have_content(contestant_2.name)
  end
end
