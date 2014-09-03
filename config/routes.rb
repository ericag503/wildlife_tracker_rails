Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('sightings/new', {:via => :get, :to => 'sightings#new'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
end
