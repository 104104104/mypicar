Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'mypic_ar/index'
  root to:redirect('mypic_ar/index')

end
