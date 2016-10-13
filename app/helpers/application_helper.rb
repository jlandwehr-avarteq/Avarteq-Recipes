module ApplicationHelper
  #should be used like: class="<%= is_active?(new_user_session_path) %>" inside li for header items
  def is_active?(link_path)
    current_page?(link_path) ? 'active' : ''
  end
end
