Rails.application.routes.draw do

  scope path: "asset-directory" do
    resources :assets, as: 'assets', path: 'all'
    get 'items', to: 'assets#items', as: 'items', path: 'items'
  end

  resources :categories
  resources :employees
  devise_for :users
  resources :welcome
  resources :login

  get "user/login"
  get "user/sign_up"

  root 'welcome#index'
end
