Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root 'public_recipes#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  get '/food/:id', to: 'foods#destroy', as: 'destroy_food'
  get '/recipe/:id', to: 'recipes#destroy', as: 'destroy_recipe'
  get '/recipe_food/:id', to: 'recipe_foods#destroy', as: 'destroy_recipe_foods'
  resources :foods, only: [:index, :create, :show]
  resources :recipes, only: [:index, :create, :show] do
    resources :recipe_foods, only:  [:create]
  end
  resources :public_recipes, only: [:index]
  resources :general_shopping_list, only: [:index]
end
