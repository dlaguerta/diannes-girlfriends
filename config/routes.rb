Rails.application.routes.draw do
  root 'home#index'

  get "/auth/:provider/callback" =>  "sessions#create"

  get "/sessions/login_failure", to: "sessions#login_failure", as: "login_failure"

  get "/sessions", to: "sessions#index", as: "sessions"

  delete "/sessions", to: "sessions#destroy"

end
