RlPag::Application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  namespace :user do
    resources :dash, :messages, :gallery
  end
  resources :posts, :galleries

  resources :posts, :galleries do
    resources :comments
  end

end
