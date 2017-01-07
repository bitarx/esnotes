Rails.application.routes.draw do
  root 'homes#index'
  resources :rentals, :only => [:index, :show]
end
