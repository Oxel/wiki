Rails.application.routes.draw do

  devise_for :users

  resources :mywikis
  resources :subscriptions

  authenticated :user do
    root to: 'mywikis#index', as: 'authenticated_root'
  end

  root to: 'welcome#index'

  get "allwikis" => "mywikis#show"

  get "upgrade" => "subscriptions#new"
  
end
