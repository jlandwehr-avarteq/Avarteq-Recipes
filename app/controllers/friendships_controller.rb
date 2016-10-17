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
      redirect_to friends_path, notice: 'Friend successfully removed'
    else
      flash[:error] = "#{ @friend.username } could not be unfriended"
      redirect_to friends_path
    end
  end

  # send a friend request using the username
  def add_friend
    friend = User.where(username: params[:username]).first
    if friend.nil?
      flash[:error] = 'Username does not exist!'
      redirect_to friends_path
    else
      #IDK why it needs to be this way around -.-
      friend.friend_request(current_user)
      redirect_to friends_path, notice: 'Friend request sent'
    end
  end

  def accept_friend
     friend = User.find(params[:id])

    #check if there is a friend request and if they are not friends, yet
    #TODO unless current_user.friends_with?(@friend) && current_user.pending_friends.exclude(@friend)
      current_user.accept_request(friend)
       redirect_to friends_path, notice: 'Friend accepted!'
    #else
      #flash[:error] = 'There is not friend request or you are already friends'
      #redirect_to friends_path
    #end
  end

  def decline_friend
    #TODO
     friend = User.find(params[:id])
     current_user.decline_request(friend)
       redirect_to friends_path, notice: 'Friend declined!'

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
