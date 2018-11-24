Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/goals" => "goals#index"
    post "/goals" => "goals#create"
    get "/goals/:id" => "goals#show"
    patch "/goals/:id" => "goals#update"
    delete "/goals/:id" => "goals#destroy"
  end
end
