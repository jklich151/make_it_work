require 'rails_helper'

RSpec.describe "contestant show page" do
  it "shows the contestant info" do
    contestant_1 = Contestant.create(name: "Jay",
                                    age: "27",
                                    hometown: "Queens, NY",
                                    years_of_experience: 4)

    visit "/contestants/#{contestant_1.id}"

    expect(page).to have_content(contestant_1.name)
    expect(page).to have_content(contestant_1.age)
    expect(page).to have_content(contestant_1.hometown)
    expect(page).to have_content(contestant_1.years_of_experience)
  end
end
