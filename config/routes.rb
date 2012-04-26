Nursecouncil::Application.routes.draw do
  resources :code_tambons
  resources :code_amphoes
  resources :code_provinces
  resources :code_prenames
  resources :devlogs
  resources :nc_modules
    
  match "/code_tambons/search/:q" => "code_tambons#search"
  match "/code_amphoes/search/:q" => "code_amphoes#search"
  match "/code_provinces/search/:q" => "code_provinces#search"
  match "/code_prenames/search/:q" => "code_prenames#search"

end
