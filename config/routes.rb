Rails.application.routes.draw do
  get 'sessions/new'
  root   "static_pages#home"
  get    "/signup",      to: "authors#new"
  get    "/settings",    to: "authors#edit"
  get    "/showarticle", to: "articles#show"
  get    "/login",       to: "sessions#new"
  post   "/login",       to: "sessions#create"
  delete "/logout",      to: "sessions#destroy"
  resources :authors
  resources :articles
end
