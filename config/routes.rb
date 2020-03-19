Rails.application.routes.draw do
  resources :projects
  devise_for :users, :controllers => {
    :registrations => 'registrations',
    :omniauth_callbacks => 'callbacks'}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
  root to: 'pages#index'
  
end
