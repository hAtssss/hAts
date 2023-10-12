Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toppages
  resources :courses
  resources :taikenkis
  resources :scoreups

  get "tamago/situmon" => "tamago#situmon"
  get "tamago/tokutyou" => "tamago#tokutyou"

  root 'toppages#index'
end
