class SightingsController < ApplicationController

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end

  def new
    @sighting = Sighting.new
    render('sightings/new.html.erb')
  end

   def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('sightings/destroy.html.erb')
  end
end
