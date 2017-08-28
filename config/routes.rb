Rails.application.routes.draw do
      get 'histories/panel', to: 'histories#panel', as: 'panel'
        get 'users/registrations', to: 'registrations#edit'
  devise_for :users, controllers: {
    registrations: 'users/registrations'

  }
  get 'histories/:id/my', to: 'histories#my', as: 'my'
  resources :histories
  get 'admin/:id/edit', to: 'admin#edit', as: 'edit_admin'
  patch 'admin/:id', to: 'admin#update', as: 'update_admin'
  root "histories#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
