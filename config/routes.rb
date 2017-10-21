Rails.application.routes.draw do
  root 'countries#index'

  resources :countries do
    resources :teams
  end

  resources :countries do
    resources :players
  end

  resources :teams do
    resources :players
  end


end
