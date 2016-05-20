Rails.application.routes.draw do

  scope path: "asset-directory" do
    resources :assets, as: 'assets', path: 'all'
    get 'laptops', to: 'assets#laptops', as: 'laptops', path: 'laptops'
  end

  resources :employees
  devise_for :users
  resources :welcome
  resources :login

  get "user/login"
  get "user/sign_up"

  root 'welcome#index'
end
