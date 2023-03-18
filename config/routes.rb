Rails.application.routes.draw do
  root to: 'tv_programs#index'
  resources :tv_programs, only: [:index, :new, :create, :destroy, :show]
end
