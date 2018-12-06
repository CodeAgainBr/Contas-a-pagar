Rails.application.routes.draw do
  resources :contas
  resources :fornecedores
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "contas#index"

  get "/novo/fornecedor", to: "pages#novo_fornecedor", as: "novo_fornecedor"
  get "/atualizar/fornecedor/:nome", to: "pages#atualizar_fornecedor", as: "atualizar_fornecedor"

  get "/nova/conta", to: "pages#nova_conta", as: "nova_conta"
  get "/atualizar/conta/:descricao_antiga", to: "pages#atualizar_conta", as: "atualizar_conta"
end
