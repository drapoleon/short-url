Rails.application.routes.draw do
  resources :urls, only: [:create]
  root	to: 'urls#index'
  get 'urls/success/', to: 'urls#success'
  get '/:short_url', to: 'urls#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
