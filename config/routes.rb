Rails.application.routes.draw do
  resources :conta
  resources :fornecedores
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  get "/novo/fornecedor", to: "pages#novo_fornecedor", as: "novo_fornecedor"
  get "/atualizar/fornecedor/:nome", to: "pages#atualizar_fornecedor", as: "atualizar_fornecedor"
end
