class MarcasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  #inicio
  def index
    @datos=Marca.all()
  end
#nuevo
  def new
    @dato=Marca.new
  end
#creación
  def create
    dato=Marca.new
    dato.nombre= params['marca']['nombre']
    dato.save
    redirect_to marcas_path
  end
#edición
  def edit
    @dato=Marca.find(params['id'])
  end
#actializar
  def update
    dato=Marca.find(params['marca']['id'])
    dato.nombre= params['marca']['nombre']
    dato.save
    redirect_to marcas_path
  end
#borrar
  def destroy
    dato=Marca.find(params['id'])
    dato.destroy
    redirect_to marcas_path
  end
end
