Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :apartments
  end

  resources :apartments do
    resources :invoices, only: [:index, :show]
  end
end
