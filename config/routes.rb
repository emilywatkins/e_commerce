Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'home#index'
  devise_for :users,
                controllers: { registrations: "registrations" }

  resources :products
  resources :order_items
  resource :cart, only: [:show]
end
