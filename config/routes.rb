Rails.application.routes.draw do
  resources :components do
    collection do
      #get 'inspectc/:id', on: :member, action: :inspectc, as: 'inspectc'
      get 'inspectc' => 'components#inspectc'
      get 'gunparam' => 'components#gunparam' 
      get 'htmxer'
      get 'index2'      
      get 'index3'  
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.inde
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "components#index"
  #root 'components#index2'
  post 'search', to: 'search#index', as: 'search'
  post 'search/suggestions', to: 'search#suggestions', as: 'search_suggestions'
end
