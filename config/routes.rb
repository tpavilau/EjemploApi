Rails.application.routes.draw do
  

  get 'persona/index'

  get 'persona/save'

  get 'persona/show'

  get 'persona/private'

  get 'persona/documento_params'

  get 'persona/delete'

  get 'documento/index'

  get 'documento/save'

  get 'documento/show'

  get 'documento/private'

  get 'documento/documento_params'

  get 'documento/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
