Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/patients" => "patients#index"
  post "/patients" => "patients#create"
  get "/patients/:id" => "patients#show"
  patch "/patients/:id" => "patients#update"
  delete "/patients/:id" => "patients#destroy"


end
