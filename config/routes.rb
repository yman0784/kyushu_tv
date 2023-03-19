Rails.application.routes.draw do
  devise_for :users
  root to: 'tv_programs#index'
  resources :tv_programs, only: [:index, :new, :create, :destroy, :show]
end
