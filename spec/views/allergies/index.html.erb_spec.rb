require 'rails_helper'

RSpec.describe "allergies/index", type: :view do
  before(:each) do
    assign(:allergies, [
      Allergy.create!(),
      Allergy.create!()
    ])
  end

  it "renders a list of allergies" do
    render
  end
end
