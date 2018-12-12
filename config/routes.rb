Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :order_items
  resources :inventories
  resources :costs
  resources :suppliers
  resources :orders
  resources :order_statuses
  resources :supplies
  resource :cart, only: [:show]
  devise_for :users
  get "/order" => "pages#order"
  get "/inventory" => "pages#inventory"
  get "/staff" => "pages#emps"
  get "/test" => "pages#testpage"
  post 'inventory/orders'
  post '/cart' => "orders#placeorder"
  get '/confirmation' => "orders#confirmation"
  get '/oinfo' => "orders#orderInfo"
  get '/ordersummary' => "pages#listOrders"
  get '/suppliercosts' => "pages#listCosts"

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
