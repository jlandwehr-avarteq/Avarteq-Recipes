Rails.application.routes.draw do
  get 'user_profile/show_to_others/:id', to: 'user_profile#show_to_others'

  get 'user_profile/show_editable'

  root 'page#welcome'

  get 'friendships/friend/:id', to: 'friendships#friend', as: 'friend'

  get 'friendships/friends', to: 'friendships#friends'

  get 'friendships/unfriend/:id', to: 'friendships#unfriend', as: 'unfriend'

end
