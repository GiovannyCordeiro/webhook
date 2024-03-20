require 'sinatra'
require 'rest-client'

get '/' do
  puts 'giovanny'
end

post '/service' do

  # Logica do serviço ....
  puts 'qualquercoisa'
  body = {}

  # Enviando a requisição POST
  # RestClient.post(
  #   'http://127.0.0.1:4568/webhook/event-created',
  #   dados.to_json,
  #   headers: { 'Content-Type': 'application/json' }
  # )

  RestClient.post 'http://127.0.0.1:4568/webhook/event-created', {'body' => 'second_api'}.to_json, {content_type: :json, accept: :json}

end
