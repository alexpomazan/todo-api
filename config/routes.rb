Rails.application.routes.draw do
  root 'projects#index'

  resources :projects do
    resources :todos
  end
  resources :todos
end