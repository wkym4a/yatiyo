Rails.application.routes.draw do
  root 'tops#index'

  resources :empty_rooms do
    collection do
      get :index_search
    end
  end



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
