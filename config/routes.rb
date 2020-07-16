Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  get :index, to: 'home#index'
  get :privacy, to: 'home#privacy'
  get :contact, to: 'home#contact'
  get :about, to: 'home#about'
  get :move_here, to: 'home#move_here'
  get :find_job, to: 'home#find_job'
  get :take_classes, to: 'home#take_classes'
  get :relocate_here, to: 'home#relocate_here'
  get :hire_here, to: 'home#hire_here'
  get :network, to: 'home#network'

  resources :signups, only: [:new, :create]
  resources :companies, only: [:index, :show] do
    collection do
      get :search
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
