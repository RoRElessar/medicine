Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  get 'search_suggestions' => 'doctors#search_suggestions', as: :search_suggestions

  resources :doctors, only: [:show, :index, :create, :update, :edit, :destroy] do
    get 'send_password', to: 'doctors#send_password', on: :collection
  end

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/services'
  get 'welcome/works'

  get 'companies/index'
  get 'company/doctors', to: 'companies#doctors'
  get 'company/schedule', to: 'companies#schedule'
  get 'company/:id', to: 'companies#show', as: 'company'

  root 'welcome#index'

  get 'doc', to: 'doctors#login'
  match 'doc/login', to: 'doctors#create_session', via: [:put, :patch, :get]
  match 'doc/logout', to: 'doctors#logout', via: [:put, :patch, :get]

  resources :schedules, only: [:show, :new,  :create, :update, :edit, :destroy]
  resources :records, only: [:create, :destroy]

end
