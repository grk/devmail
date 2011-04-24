Rails.application.routes.draw do
  resources :development_mails, :controller => 'devmail/development_mails', :only => [:index, :show, :destroy] do
    get 'clear', :on => :collection
    get 'html_part', :on => :member
  end
end
