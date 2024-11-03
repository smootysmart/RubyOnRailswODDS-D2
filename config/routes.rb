Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end
