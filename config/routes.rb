TalkingHandsApp::Application.routes.draw do

  get "/users/:id", to: 'users#show', as: 'user_messages'

  devise_for :views

  resources :mentions
  resources :messages

  devise_for :users

  root :to => "home#index"

end
