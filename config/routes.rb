Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  get 'video', to: 'welcome#video'
  get 'contact', to: 'welcome#contact'
  get 'about', to: 'welcome#about'

  root 'welcome#index'

  resources "contacts", only: [:new, :create]
end
