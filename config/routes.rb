# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'home#index', as: 'home_page'
  # Defines the root path route ("/")
  # root "articles#index"
  #--------------------------------------
  #devise_for :users

  # devise_scope :user do
  #   authenticated :user do
  #     root 'recipes#index', as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root 'public_recipes#index', as: :unauthenticated_root
  #   end
  # end

  resources :foods, only: [:index, :create, :show, :destroy]
  resources :recipes, only: [:index, :create, :show, :destroy] do
    resources :recipe_foods, only:  [:create, :destroy]
  end
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]
end
