Rails.application.routes.draw do

  devise_for :users

  resources :mywikis 

  

  authenticated :user do
   root to: 'mywikis#index', as: 'authenticated_root'
  end
  
  root to: 'welcome#index'
  
end
