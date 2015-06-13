Rails.application.routes.draw do

  resources :courses do
    resources :groups
  end
  
end
