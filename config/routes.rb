Rails.application.routes.draw do
  root 'countries#index'

  namespace :api do
    resources :countries do
      resources :teams, :players, :competitions
    end
    resources :competitions do
      resources :competitions, :seasons, :teams
    end

    resources :teams do
      resources :players, :matches
    end

    resources :seasons do
      resources :matches
    end
  end

  resources :countries do
    resources :teams, :players, :competitions
  end

  resources :competitions do
    resources :competitions, :seasons, :teams
  end

  resources :teams do
    resources :players, :matches
  end

  resources :seasons do
    resources :matches
  end

end
