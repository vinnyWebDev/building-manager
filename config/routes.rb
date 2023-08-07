Rails.application.routes.draw do
  root "tenants#index"
 
  #maps routes for us
  resources :tenants

end
