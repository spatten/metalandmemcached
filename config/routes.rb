Metaltest::Application.routes.draw do
  match "/processes" => ProcessesApp
  match "/ping/:slug" => PingApp
  resources :standard_ping, :controller => 'standard_ping'
end
