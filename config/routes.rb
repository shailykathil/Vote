Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'result' =>'votes#result'
  resources :votes, only:[:index,:create,:new,:show]
  resources :setting
  resources :candidates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
