require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do

  describe 'create a friendship between 2 valid friends' do
    let!(:user_1) { fabricate... }
    let!(:user_2) { fabricate... }

    context 'user1 and user2 are not friends yet' do
      # before(:each)
      #   log user1
      #   post request to the route with the good args
      #
      # it: assume that user1.friends changed
      # it: asssume that user1.friends includes user2
    end
  end
end
