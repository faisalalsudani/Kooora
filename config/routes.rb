Rails.application.routes.draw do
  root 'countries#index'

  resources :countries do
    resources :teams
  end

end
