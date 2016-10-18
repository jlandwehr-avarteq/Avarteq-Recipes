Rails.application.routes.draw do
  #User show
  get 'user_profile/show/:id', to: 'user_profile#show', as: 'user_profil/show'
  #User edit
  get 'user_profile/edit/:id', to: 'user_profile#edit', as: 'user_profil/edit'

  root 'page#welcome'

  resources :friendships, only: [:index, :create, :destroy] do
    member do
      post 'accept_friend/:id' => 'friendships#accept_friend', as: 'accept_friend'
      post 'decline_friend/:id' => 'friendships#decline_friend', as:'decline_friend'
    end
  end

 devise_for :users, controllers: { registrations: "registrations" }

end
