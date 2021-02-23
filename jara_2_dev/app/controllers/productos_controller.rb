class ProductosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  #inicio
  def index
    @datos=Producto.all
  end

  #nuevo
  def new
    @dato=Producto.new
    @rubro=Rubro.all
    @marca=Marca.all
  end

  #creación
  def create
    dato=Producto.new
    dato.nombre= params['producto']['nombre']
    dato.cant_min= params['producto']['cant_min']
    dato.cant_act= params['producto']['cant_act']
    dato.precio= params['producto']['precio']
    dato.activo= params['producto']['activo']
    dato.marca_id= params['producto']['marca_id']
    dato.rubro_id= params['producto']['rubro_id']
    dato.save
    redirect_to productos_path
  end

  #edición
  def edit
    @dato=Producto.find(params['id'])
    @marca=Marca.all
    @rubro=Rubro.all
  end

  #actualizar
  def update
    dato=Producto.find(params['producto']['id'])
    dato.nombre= params['producto']['nombre']
    dato.cant_min= params['producto']['cant_min']
    dato.cant_act= params['producto']['cant_act']
    dato.precio= params['producto']['precio']
    dato.activo= params['producto']['activo']
    dato.marca_id= params['producto']['marca_id']
    dato.rubro_id= params['producto']['rubro_id']
    dato.save
    redirect_to productos_path
  end

  #borrar
  def destroy
    dato=Producto.find(params['id'])
    dato.destroy
    redirect_to productos_path
  end
end
