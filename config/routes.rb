RlPag::Application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  namespace :user do
    resources :dash, :messages, :gallery
  end
  resources :galleries

  resources :posts do
    #collection do
      get :events
    #end
    resources :comments
  end

end
