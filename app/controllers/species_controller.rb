class SpeciesController < ApplicationController

  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def create
    @specie = Specie.new(:name => params[:name])
    if @specie.save
      render('species/success.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def new
    @specie =Specie.new
    render('species/new.html.erb')
  end

   def destroy
    @specie = Specie.find(params[:id])
    @specie.destroy
    render('species/destroy.html.erb')
  end
end
