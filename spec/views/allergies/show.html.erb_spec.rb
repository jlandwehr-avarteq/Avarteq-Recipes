require 'rails_helper'

RSpec.describe "allergies/show", type: :view do
  before(:each) do
    @allergy = assign(:allergy, Allergy.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
