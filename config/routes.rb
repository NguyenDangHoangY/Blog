Rails.application.routes.draw do
  root "articles#index"
  get '/authors/:author_id/articles', to: 'authors#show_all_article', as: 'show_all_articles'
  get '/authors/:author_id/about', to: 'authors#about', as: 'about'

  resources :articles do
    resources :comments, :authors
  end

  resources :authors do
    resources :articles
  end
end
