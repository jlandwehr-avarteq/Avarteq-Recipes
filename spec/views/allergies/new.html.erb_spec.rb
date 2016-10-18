require 'rails_helper'

RSpec.describe "allergies/new", type: :view do
  before(:each) do
    assign(:allergy, Allergy.new())
  end

  it "renders new allergy form" do
    render

    assert_select "form[action=?][method=?]", allergies_path, "post" do
    end
  end
end
