Rails.application.routes.draw do

  resources :courses, shallow: true do
    resources :groups
    get :schedule, on: :collection
  end
  
end