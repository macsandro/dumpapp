Rails.application.routes.draw do

root 'pages#home'



  resources :customers do
    resources :sites do
      resources :dumpsters
    end
  end

  resources :service_types 
  resources :services 
  resources :work_order_statuses 
  resources :work_orders
  resources :dumpster_types
  resources :drivers
  resources :materials
  resources :dumpsites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
