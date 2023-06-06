Rails.application.routes.draw do
  resources :people do
    resources :documents
    resources :roles
  end

  root 'people#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
