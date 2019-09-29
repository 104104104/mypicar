Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'mypic_ar/index'
  root to:redirect('mypic_ar/index')

  get 'mypic_ar/editpic'
  get 'mypic_ar/takeaphoto'

  post 'mypic_ar/create' => 'mypic_ar#create'

end
