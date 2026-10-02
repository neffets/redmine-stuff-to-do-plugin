# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

RedmineApp::Application.routes.draw do
  get 'stuff_to_do', controller: 'stuff_to_do', action: 'index'

  get 'time_grid', controller: 'stuff_to_do', action: 'time_grid'
  post 'time_grid', controller: 'stuff_to_do', action: 'time_grid'
  get 'time_grid/:date', controller: 'stuff_to_do', action: 'time_grid'

  get '/stuff_to_do/add', controller: 'stuff_to_do', action: 'add'
  post '/stuff_to_do/add', controller: 'stuff_to_do', action: 'add'
  get '/stuff_to_do/delete', controller: 'stuff_to_do', action: 'delete'
  post '/stuff_to_do/delete', controller: 'stuff_to_do', action: 'delete'
  get '/stuff_to_do/clear', controller: 'stuff_to_do', action: 'clear'
  post '/stuff_to_do/clear', controller: 'stuff_to_do', action: 'clear'
  get  '/stuff_to_do/available_issues(.:format)',    controller: 'stuff_to_do', action: 'available_issues'
  post '/stuff_to_do/reorder(.:format)',             controller: 'stuff_to_do', action: 'reorder'
  post '/stuff_to_do/add_to_time_grid(.:format)',    controller: 'stuff_to_do', action: 'add_to_time_grid'
  post '/stuff_to_do/remove_from_time_grid(.:format)', controller: 'stuff_to_do', action: 'remove_from_time_grid'
  post '/stuff_to_do/save_time_entry(.:format)',     controller: 'stuff_to_do', action: 'save_time_entry'

  get '/stuff_to_do/reportees', controller: 'stuff_to_do_reportee', action: 'index'
  get '/stuff_to_do/reportees_admin', controller: 'stuff_to_do_reportee', action: 'admin'

  get '/stuff_to_do/reportees/add', controller: 'stuff_to_do_reportee', action: 'add'
  post '/stuff_to_do/reportees/add', controller: 'stuff_to_do_reportee', action: 'add'
  get '/stuff_to_do/reportees/delete', controller: 'stuff_to_do_reportee', action: 'delete'
  post '/stuff_to_do/reportees/delete', controller: 'stuff_to_do_reportee', action: 'delete'
end
