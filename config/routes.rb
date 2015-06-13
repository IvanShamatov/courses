Rails.application.routes.draw do

  resources :courses do
    resources :groups
    get :schedule, on: :collection
  end
  
end
