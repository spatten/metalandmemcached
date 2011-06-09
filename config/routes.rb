Metaltest::Application.routes.draw do
  match "/processes" => ProcessesApp
  match "/ping/:slug" => PingApp
  match "/standard_ping/:slug" => "standard_ping#show"
end
