Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/places" => "places#index"
    post "/places" => "places#create"
    get "/places" => "places#show"
    patch "/places" => "places#update"
    delete "/places" => "places#destroy"
  end
end
