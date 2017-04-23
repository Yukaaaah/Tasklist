Rails.application.routes.draw do

  devise_for :users
  root 'tasks#index'

  resources :tasks do
    resources :children, only:[:create, :update]
  end
end
