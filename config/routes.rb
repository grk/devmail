Rails::Application.routes.draw do |map|
  resources :development_mails, :controller => 'devmail/development_mails', :only => [:index, :show]
end
