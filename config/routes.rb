Rails.application.routes.draw do
  root to: 'pages#home'

  resources :result, only: [:index, :show]
end
