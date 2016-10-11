require 'rails_helper'

RSpec.describe UserProfileController, type: :controller do

  describe "GET #show_to_others" do
    it "returns http success" do
      get :show_to_others
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show_editable" do
    it "returns http success" do
      get :show_editable
      expect(response).to have_http_status(:success)
    end
  end

end
