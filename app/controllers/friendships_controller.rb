class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_friend, only: %i(friend unfriend)

  def friend
  end

  def friends
    #u = User.where(username: 'Blob').first
    #current_user.friend_request(u)
    #u.accept_request(current_user)
    @friends = current_user.friends
  end

  def unfriend
    if current_user.remove_friend(@friend)
      redirect_to friendships_friends_path, notice: 'Friend successfully removed'
    else
      flash[:error] = "#{ @friend.username } could not be unfriended"
      redirect_to friendships_friends_path
    end
  end

  private

  def set_friend
    friend = User.find(params[:id])

    if current_user.friends_with?(friend)
      @friend = friend
    else
      flash[:error] = "You are not a friend of #{ friend.username }, please add him first!"
      #TODO change path
      redirect_to root_path
    end
  end
end
