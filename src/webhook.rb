require 'sinatra'
require 'rest-client'

post '/webhook/event-created' do
  puts 'chegou no webhook'

  resposta = RestClient.post(
    'http://127.0.0.1:4567/recieve_event',
    request.body,
    headers: { 'Content-Type': 'application/json' }
  )
end
