Rails.application.routes.draw do

  get 'home/index'
  get 'home/errorlogin'
  devise_for :users
  #root
  root to: 'productos#index'

  #rubros
  get 'rubros', to:'rubros#index'
  get 'rubros/new', to:'rubros#new'
  post 'rubros/new', to:'rubros#create', as:'rubros_crear'
  get 'rubros/:id/edit', to:'rubros#edit', as:'rubros_editar'
  put 'rubros/edit', to:'rubros#update', as:'rubros_actualizar'
  delete 'rubros/:id/delete', to:'rubros#destroy', as:'rubros_borrar'

  #productos
  get 'productos', to:'productos#index'
  get 'productos/new', to:'productos#new'
  post 'productos/new', to:'productos#create', as:'productos_crear'
  get 'productos/:id/edit', to:'productos#edit', as:'productos_editar'
  put 'productos/edit', to:'productos#update', as:'productos_actualizar'
  delete 'productos/:id/delete', to:'productos#destroy', as:'productos_borrar'

  #marcas
  get 'marcas', to:'marcas#index'
  get 'marcas/new', to:'marcas#new'
  post 'marcas/new', to:'marcas#create', as:'marcas_crear'
  get 'marcas/:id/edit', to:'marcas#edit', as:'marcas_editar'
  put 'marcas/edit', to:'marcas#update', as:'marcas_actualizar'
  delete 'marcas/:id/delete', to:'marcas#destroy', as:'marcas_borrar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
