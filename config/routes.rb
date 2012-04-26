Nursecouncil::Application.routes.draw do
  match "/code_tambons/search/:q" => "code_tambons#search"
  match "/code_amphoes/search/:q" => "code_amphoes#search"
  match "/code_provinces/search/:q" => "code_provinces#search"
  match "/code_prenames/search/:q" => "code_prenames#search"
  
  match "/code_tambons/search/" => "code_tambons#index"
  match "/code_amphoes/search/" => "code_amphoes#index"
  match "/code_provinces/search/" => "code_provinces#index"
  
  resources :code_tambons
  resources :code_amphoes
  resources :code_provinces
  resources :code_prenames
  resources :devlogs
  resources :nc_modules
    


end
