TalkingHandsApp::Application.routes.draw do

  resources :mentions
  resources :messages

  devise_for :users

  root :to => "home#index"

end
