Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: :create
   end
 end
