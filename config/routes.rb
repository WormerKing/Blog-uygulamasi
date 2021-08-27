Rails.application.routes.draw do
  resources :user
  resources :post
  root "post#all_posts"
end
