Rails.application.routes.draw do
  resources :projects, shallow: true do
    resources :script_locations do
      resources :locations
  end
end

  #resources :locations
  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
