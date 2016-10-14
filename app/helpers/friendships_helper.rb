module FriendshipsHelper
  def render_unfriend_button(friend)
    link_to "<i class='glyphicon glyphicon-remove-circle'></i>".html_safe, unfriend_path(friend), class: 'btn btn-danger'
  end

  def render_friend_into_button(friend)
    #TODO add path
     link_to "<i class='glyphicon glyphicon-user'></i>".html_safe, _________path(friend), class: 'btn btn-primanty'
  end
end
