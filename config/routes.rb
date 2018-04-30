Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :users,
                controllers: { registrations: "registrations" }

  resources :products
  resources :orders_products

end
