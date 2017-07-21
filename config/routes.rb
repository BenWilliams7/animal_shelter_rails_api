Rails.application.routes.draw do
  root to: "animals#index"
  resources :animals do
    get 'page/:page', action: :index, on: :collection
  end

  get 'random', to: 'animals#random'
  get 'search', to: 'animals#search'

end
