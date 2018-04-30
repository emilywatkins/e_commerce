Rails.application.routes.draw do
  root :to => 'home#index'
  devise_for :users,
                controllers: { registrations: "registrations" }

  resources :products
  resources :order_items

end
