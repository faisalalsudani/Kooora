Rails.application.routes.draw do
  root 'countries#index'

  namespace :api do
    resources :countries do
      resources :teams, :players, :competitions
    end
  end

  resources :countries do
    resources :teams, :players, :competitions
  end

  resources :competitions do
    resources :seasons, :teams, :competitions
  end

  resources :teams do
    resources :players, :matches
  end

end
