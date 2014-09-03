class TasksController < ApplicationController

  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def create
    @specie = Specie.create(:name => params[:names])
    render('species/new.html.erb')
  end
end
