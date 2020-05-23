Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  get :index, to: 'home#index'
  get :contact, to: 'home#contact'
  get :about, to: 'home#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
