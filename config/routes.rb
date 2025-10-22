Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  resources :accounts

  get "activity/mine"

  get "activity/feed"

  root "activity#feed"
end
