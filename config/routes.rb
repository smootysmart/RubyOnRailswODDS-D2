Rails.application.routes.draw do
  root "articles#index"
  # get "/articles", to: "articles#index"
  
  resources :articles do
    resources :comments
  end
end
