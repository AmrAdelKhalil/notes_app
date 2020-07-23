Rails.application.routes.draw do
  get 'hyper_link/show'
  devise_for :users

  resources :users, only: [] do
    resources :notes
  end

  get 'hyperlink/:id', action: :show, controller: 'hyper_links', as: :hyperlink
end
