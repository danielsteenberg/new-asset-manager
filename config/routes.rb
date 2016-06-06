Rails.application.routes.draw do

  scope path: "asset-directory" do
    resources :assets, as: 'assets', path: 'all'
    get 'category_list', to: 'assets#category_list', as: 'category-list', path: 'category-list'
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
