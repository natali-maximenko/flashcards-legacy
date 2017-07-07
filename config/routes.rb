Rails.application.routes.draw do
  filter :locale

  root 'main#index'

  scope module: 'home' do
    resources :user_sessions, only: [:new, :create]
    resources :users, only: [:new, :create]
    get 'login', to: 'user_sessions#new', as: :login

    post 'oauth/callback', to: 'oauths#callback'
    get 'oauth/callback', to: 'oauths#callback'
    get 'oauth/:provider', to: 'oauths#oauth', as: :auth_at_provider
  end

  scope module: 'dashboard' do
    resources :user_sessions, only: :destroy
    resources :users, only: :destroy
    post 'logout', to: 'user_sessions#destroy', as: :logout

    resources :cards

    resources :blocks do
      member do
        put 'set_as_current'
        put 'reset_as_current'
      end
    end

    put 'review_card', to: 'trainer#review_card', as: :review_card
    get 'trainer', to: 'trainer#index', as: :trainer

    get 'profile/:id/edit', to: 'profile#edit', as: :edit_profile
    put 'profile/:id', to: 'profile#update', as: :profile
  end
end
