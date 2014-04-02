Wildlife::Application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})

  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})

end
