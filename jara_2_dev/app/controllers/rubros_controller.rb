class RubrosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  #inicio
  def index
    @datos=Rubro.all()
  end
#nuevo
  def new
    @dato=Rubro.new
  end
#creacion
  def create
    dato=Rubro.new
    dato.nombre= params['rubro']['nombre']
    dato.perecedero= params['rubro']['perecedero']
    dato.save
    redirect_to rubros_path
  end
#edicion
  def edit
    @dato=Rubro.find(params['id'])
  end
#actualizar
  def update
    dato=Rubro.find(params['rubro']['id'])
    dato.nombre= params['rubro']['nombre']
    dato.perecedero= params['rubro']['perecedero']
    dato.save
    redirect_to rubros_path
  end
#borrar
  def destroy
    dato=Rubro.find(params['id'])
    dato.destroy
    redirect_to rubros_path
  end
end
