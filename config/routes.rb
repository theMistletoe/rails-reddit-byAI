
Rails.application.routes.draw do
  resources :chat_rooms do
    resources :messages
  end
  root 'chat_rooms#index'
end

