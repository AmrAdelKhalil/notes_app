Rails.application.routes.draw do
  get 'hyper_link/show'
  devise_for :users

  resources :users, only: [] do
    resources :notes do
      collection do
        get 'search', action: :search, as: :search
      end
    end
  end

  get 'hyperlink/:id', action: :show, controller: 'hyper_links', as: :hyperlink

  resources :collaborators, only: %i(index update) do
    collection do
      get 'collaboration_info/:user_id/hyperlink/:hyper_link_id', action: :get_collaboration_information, as: :collab_info
    end
  end
end
