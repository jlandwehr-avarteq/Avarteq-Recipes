require 'rails_helper'

RSpec.describe "allergies/edit", type: :view do
  before(:each) do
    @allergy = assign(:allergy, Allergy.create!())
  end

  it "renders the edit allergy form" do
    render

    assert_select "form[action=?][method=?]", allergy_path(@allergy), "post" do
    end
  end
end
