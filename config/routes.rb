Rails.application.routes.draw do
  get 'user_profile/show_to_others'

  get 'user_profile/show_editable'

  devise_for :users, controllers: { registrations: "registrations" }
  root 'page#welcome'
end
