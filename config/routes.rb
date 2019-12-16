Rails.application.routes.draw do
  post '/ping', to: 'rpc_triggers#ping'
end
