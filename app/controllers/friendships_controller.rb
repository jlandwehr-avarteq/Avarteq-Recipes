class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_friend, only: %i(unfriend destroy)

  def index
    @friends = current_user.friends
  end

  def create
    friend = User.where(username: params[:user][:username]).first

    if friend.nil?
      flash[:error] = 'Username does not exist!'
      redirect_to friendships_path
    else
      #IDK why it needs to be this way around -.-
      friend.friend_request(current_user)
      redirect_to friendships_path, notice: 'Friend request sent'
    end
  end

  def destroy
    if current_user.remove_friend(@friend)
      redirect_to friendships_path, notice: 'Friend successfully removed'
    else
      flash[:error] = "#{ @friend.username } could not be unfriended"
      redirect_to friendshipss_path
    end
  end

  # accept a friend request
  def accept_friend
    friend = get_friend
    if current_user.pending_friends.include?(friend)
      current_user.accept_request(friend)
       redirect_to friendships_path, notice: 'Friend accepted!'
    else
      flash[:error] = 'There is no friend request or you are already friends'
      redirect_to friendships_path
    end
  end

  def decline_friend
    friend = get_friend
    if current_user.pending_friends.include?(friend)
       current_user.decline_request(friend)
       redirect_to friendships_path, notice: 'Friend declined!'
    else
      flash[:error] = 'Friend could not be declined!'
      redirect_to friendships_path
    end
  end

  private

  def set_friend
    friend = get_friend
    if current_user.friends_with?(friend)
      @friend = friend
    else
      flash[:error] = "You are not a friend of #{ friend.username }, please add him first!"
      #TODO change path
      redirect_to root_path
    end
  end

  def get_friend
    User.find(params[:id])
  end
end
