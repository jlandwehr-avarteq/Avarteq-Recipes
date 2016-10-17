module FriendshipsHelper
  def render_unfriend_button(friend)
    link_to "<i class='glyphicon glyphicon-remove-circle'></i>".html_safe, unfriend_path(friend), class: 'btn btn-danger'
  end

  def render_friend_into_button(friend)
     link_to "<i class='glyphicon glyphicon-user'></i>".html_safe, userinformation_path(friend), class: 'btn btn-info'
  end

  def render_friend_accept_button(friend)
     link_to "<i class='glyphicon glyphicon-ok'></i>".html_safe, accept_friend_path(friend), class: 'btn btn-success'
  end

  def render_friend_decline_button(friend)
     link_to "<i class='glyphicon glyphicon-remove'></i>".html_safe, decline_friend_path(friend), class: 'btn btn-danger'
  end

  #This functions retun all links that are associated with friends
  #It is needed so that 'friends' is activated in the header by friends or friend
  def friends_path_collection
    friend_path = [friend_path, friends_path]
  end

end
