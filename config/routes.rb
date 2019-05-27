Rails.application.routes.draw do
  resources :products, only: :show do
    scope module: :products do
      resources :details, only: :index
    end
  end
end
