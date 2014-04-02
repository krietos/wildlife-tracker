class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render('regions/index.html.erb')
  end

  def create
    @region = Region.create(:name => params[:name])
    @regions = Region.all
    redirect_to regions_path
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(:name => params[:name])
      redirect_to regions_path
    else
      render('regions/edit.html.erb')
    end
  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path
  end
end
