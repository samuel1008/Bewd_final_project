Rails.application.routes.draw do
 
  
  get 'maps/index'

  devise_for :users
  root to: 'home#index'
  resources :maps
  resources :contacts
 post 'maps/:id/send_text' => 'maps#send_text', as: :send_text


end
