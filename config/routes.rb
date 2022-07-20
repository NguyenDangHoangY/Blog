Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments, :authors
  end

  resources :authors do
    resources :articles
  end
end
