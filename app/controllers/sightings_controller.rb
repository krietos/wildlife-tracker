class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def show
    @sightings = Sighting.where({species_id => params[:id]})
    render('/species/index.html.erb')
  end

  def create
    @specie = Species.find(params[:species_id])
    @sighting = Sighting.create(:location => params[:location], :date => params[:date], :time => params[:time], :species_id => params[:species_id], :region_id => params[:region])
    redirect_to("/species/#{@specie.id}")
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @specie = Species.find(@sighting.species_id)
    @sighting.destroy
    redirect_to("/species/#{@specie.id}")
  end

  def update
    @specie = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(:location => params[:location], :date => params[:date], :time => params[:time], :species_id => params[:species_id], :region => params[:region])
      redirect_to("/species/#{@specie.id}")
    else
      render('/sightings/edit.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end


end





