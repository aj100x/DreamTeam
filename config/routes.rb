Rails.application.routes.draw do
  devise_for :users

  # resource :user
  resources :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :collaboration_requests, only: :index
  resources :projects do
  resources :collaboration_requests, only: [:create, :index]
  end
  post '/collaboration_request/:id/accept', to: 'collaboration_requests#accept', as: 'accept_collaboration'
  post '/collaboration_request/:id/decline', to: 'collaboration_requests#decline', as: 'decline_collaboration'

end
