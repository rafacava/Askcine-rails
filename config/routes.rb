Rails.application.routes.draw do
  get 'busca/filmes'
  get 'busca/cinema'
   get 'principal/index'
   
   resources :filmes
 
  get 'filmes/index'
  root 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
