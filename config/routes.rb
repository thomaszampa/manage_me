Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/goals" => "goals#index"
    post "/goals" => "goals#create"
    get "/goals" => "goals#show"
    patch "/goals/:id" => "goals#update"
    delete "/goals/:id" => "goals#destroy"
  end
end
