Rails.application.routes.draw do
  get "activity/mine"
  get "activity/feed"
  root "activity#feed"
end
