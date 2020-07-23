Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [] do
    resources :notes
  end
end
