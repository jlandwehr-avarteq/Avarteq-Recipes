Rails.application.routes.draw do
  get 'user_profile/show_to_others/:id', to: 'user_profile#show_to_others'

  get 'user_profile/show_editable'

  root 'page#welcome'

  get 'friend/:id', to: 'friendships#friend', as: 'friend'

  get 'friends', to: 'friendships#friends'

  get 'unfriend/:id', to: 'friendships#unfriend', as: 'unfriend'

  post "add_friend", to: "friendships#add_friend"

  get 'accept_friend/:id', to: "friendships#accept_friend", as:'accept_friend'

  get 'decline_friend/:id', to: "friendships#decline_friend", as:'decline_friend'

end
