Rails.application.routes.draw do
  devise_for :users do
    member do
     get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pairs#index'

  resources:relationships, only: [:create, :destroy]
end
