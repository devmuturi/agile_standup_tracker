Rails.application.routes.draw do
  get "activity/mine"
  root "activity#feed"
end
