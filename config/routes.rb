MicroTutos::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
 
  root 'home#index'
  resources :tutorials
  resources :stages
end
