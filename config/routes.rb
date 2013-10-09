MicroTutos::Application.routes.draw do
  root 'home#index'
 
  devise_for :users, controllers: {registrations: 'registrations'}
  
  resources :tutorials
  resources :stages, only: [:destroy, :create, :update]
  resources :comments, only: [:destroy, :create]

  get 'tutorials/:id/partial' => 'tutorials#partial', as: 'partial'
end
