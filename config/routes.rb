Rails.application.routes.draw do
  resources :finals
  resources :tests
  get '/product(/:id)', to: 'products#index', as: 'productss'

  patch "/products/:id/edit" , to: "products#edit", as: 'edit_product'
  post "/products/create" , to: "products#create", as: 'create_product'
  get "/products/exemplo.js" , to:'products#java'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
