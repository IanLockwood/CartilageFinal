Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  get 'video', to: 'welcome#video'
  get 'contact', to: 'welcome#contact'
  get 'about', to: 'welcome#about'

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

  root 'welcome#index'
end
