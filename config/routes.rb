Rails.application.routes.draw do
  root 'home#index'
  match '/convert', to: 'home#convert', via: 'get', as: :convert
end
