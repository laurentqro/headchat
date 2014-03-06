TalkingHandsApp::Application.routes.draw do

  devise_for :views

  resources :mentions
  resources :messages

  devise_for :users

  root :to => "home#index"

end
