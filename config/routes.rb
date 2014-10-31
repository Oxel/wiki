Rails.application.routes.draw do

  resources :mywikis

  devise_for :users

  authenticated :user do
    root to: 'mywikis#index', as: 'authenticated_root'
  end

  root to: 'welcome#index'
  
end
