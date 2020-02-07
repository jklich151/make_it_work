require 'rails_helper'

RSpec.describe "The projects show page" do
  it "should display project info" do
    litfit = Project.create(name: "Litfit",
                            material: "Lamp Shade")
    apartment_furnishings = litfit.challenge.create(theme: "Apartment Furnishings")

    visit "/projects/#{litfit.id}"

    expect(page).to have_content(litfit.name)
    expect(page).to have_content(litfit.material)
  end
end
