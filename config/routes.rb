Rails.application.routes.draw do
  root "static_pages#home"
  get  "/signup",   to: "authors#new"
  get  "/settings", to: "authors#edit"
  resources :authors
  resources :articles
end
