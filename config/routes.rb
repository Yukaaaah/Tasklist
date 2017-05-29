Rails.application.routes.draw do

    devise_for :users, only: [:sessions, :omniauth_callbacks],
              controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

    root 'tasks#index'

end
