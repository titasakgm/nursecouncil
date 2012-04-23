Nursecouncil::Application.routes.draw do
  resources :code_provinces

  resources :code_prenames

  resources :devlogs
  resources :nc_modules
end
