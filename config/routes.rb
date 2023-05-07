Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/patients" => "patients#index"
  post "/patients" => "patients#create"
  get "/patients/:id" => "patients#show"
  patch "/patients/:id" => "patients#update"
  delete "/patients/:id" => "patients#destroy"

  get "/doctor_notes" => "doctor_notes#index"
  post "/doctor_notes" => "doctor_notes#create"
  get "/doctor_notes/:id" => "doctor_notes#show"
  patch "/doctor_notes/:id" => "doctor_notes#update"
  delete "/doctor_notes/:id" => "doctor_notes#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
