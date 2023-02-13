Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users do 
    delete '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :posts do
    resources :comments, only: [:create]
  end
end
