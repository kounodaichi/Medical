Rails.application.routes.draw do
  get 'blogs/index'
  devise_for :users
  root "posts#index"
  resources :posts
  resources :blogs
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
