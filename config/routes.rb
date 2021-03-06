Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations',
    omniauth_callbacks: 'callbacks'
  }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end
  root to: 'pages#index'
  resources :projects do
    collection do
      get 'ruby'
      get 'sinatra'
      get 'javascript'
      get 'rails'
      get 'react'
      get 'personal'
    end
    resources :comments
  end
end
