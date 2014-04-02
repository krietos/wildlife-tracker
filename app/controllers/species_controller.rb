class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def show
    @specie = Species.find(params[:id])
    render('species/show.html.erb')
  end

  def create
    @specie = Species.create(:name => params[:name])
    @species = Species.all
    redirect_to species_path
  end

  def update
    @specie = Species.find(params[:id])
    if @specie.update(:name => params[:name])
      redirect_to species_path
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @specie = Species.find(params[:id])
    @specie.destroy
    redirect_to species_path
  end

  def edit
    @specie = Species.find(params[:id])
    render('species/edit.html.erb')
  end
end
