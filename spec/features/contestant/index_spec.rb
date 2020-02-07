require 'rails_helper'

RSpec.describe "contestants index page" do
  it "can see all contestants and their projects" do
    contestant_1 = Contestant.create(name: "Jay",
                                    projects: "Litfit")
    contestant_2 = Contestant.create(name: "Kay",
                                    projects: "Litfit")
    visit "/contestants"

    expect(page).to have_content(contestant_1.name)
    expect(page).to have_content(contestant_2.name)
    expect(page).to have_content(contestant_1.projects)
    expect(page).to have_content(contestant_2.projects)
  end
end
