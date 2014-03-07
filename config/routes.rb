TalkingHandsApp::Application.routes.draw do

  devise_for :users

  devise_for :views

  resources :mentions
  resources :messages

  get "/users/:id", to: 'users#show', as: 'user'

  root :to => "home#index"

end
