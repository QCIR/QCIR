MicroTutos::Application.routes.draw do
  root 'home#index'
 
  devise_for :users, controllers: {registrations: 'registrations'}
  resources  :tutorials
  resources  :stages
end
