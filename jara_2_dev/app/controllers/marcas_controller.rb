class MarcasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @datos=Marca.all()
  end

  def new
    @dato=Marca.new
  end

  def create
    dato=Marca.new
    dato.nombre= params['marca']['nombre']
    dato.save
    redirect_to marcas_path
  end

  def edit
    @dato=Marca.find(params['id'])
  end

  def update
    dato=Marca.find(params['marca']['id'])
    dato.nombre= params['marca']['nombre']
    dato.save
    redirect_to marcas_path
  end

  def destroy
    dato=Marca.find(params['id'])
    dato.destroy
    redirect_to marcas_path
  end
end
