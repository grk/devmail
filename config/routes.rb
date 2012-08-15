Devmail::Engine.routes.draw do
  resources :messages do
    get :send_test, on: :collection
    get :html_part, on: :member
  end
  root to: 'messages#index'
end

Rails.application.routes.draw do
  mount Devmail::Engine => "/devmail"
end
