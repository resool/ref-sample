Rails.application.routes.draw do
  resources :products, only: [:show] do
    resources :details, only: [:index]
  end
end
