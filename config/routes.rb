Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portfolios#angular'

  get 'ruby-rails-items', to: 'portfolios#ruby'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  get 'blogs/*missing', to: 'blogs#missing'

  get 'query/:something/:another_one', to: 'pages#something'

  get 'query/:something', to: 'pages#something'

  mount ActionCable.server => '/cable'

end
