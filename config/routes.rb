Rails.application.routes.draw do
  root to: 'pages#home'

  resources :characters, only: [:index, :show]
end
