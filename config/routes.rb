
Rails.application.routes.draw do
  resources :chat_rooms
  root 'chat_rooms#index'
end

