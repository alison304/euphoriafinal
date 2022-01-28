Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get "pages", to: "pages#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles do
   # resources :bookings, only: [:new, :create]
  end
    resources :bookings
end
