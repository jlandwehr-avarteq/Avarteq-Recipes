require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do

  describe "GET #friend" do
    it "returns http success" do
      get :friend
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #friends" do
    it "returns http success" do
      get :friends
      expect(response).to have_http_status(:success)
    end
  end

end
