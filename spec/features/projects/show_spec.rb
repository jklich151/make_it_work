require 'rails helper'

RSpec.describe "The projects show page" do
  it "should display project info" do
    litfit = Project.create(name: "Litfit",
                            material: "Lamp Shade",
                            challenge_theme: "Apartment Furnishings")
  end
end
