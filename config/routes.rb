Rails.application.routes.draw do
  root "static_pages#home"
  get  "/signup", to: "authors#new"
  resources :authors
end
