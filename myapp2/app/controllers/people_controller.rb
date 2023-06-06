class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end


  def new
    @person = Person.new
  end


  def edit
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Persona Creada Correctamente' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Datos actualizados Correctamente' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path, notice: 'La persona ha sido eliminada exitosamente.'
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:identification, :first_name, :second_name, :first_last_name, :second_last_name, :document_id, :role_id)
    end
end
