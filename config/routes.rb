Rails.application.routes.draw do
  resources :projects do
    resources :script_locations, shallow: true
  end
  resources :script_locations do
    resources :locations, shallow: true
  end

  #resources :locations
  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
