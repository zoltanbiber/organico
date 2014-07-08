Rails.application.routes.draw do

  devise_for :users
  root 'shops#index'
  resources :shops

  resources :users, :only => [:create, :show, :update] do
    member do
      get :show
      get :update 
    end
  end
  
end




