Rails.application.routes.draw do
  root 'main#index'
  get 'pizza' => 'main#pizza'
  post 'order' => 'order#create'
end
