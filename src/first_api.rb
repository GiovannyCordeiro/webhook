require 'sinatra'

before do
  request.body.rewind
  @request_payload = JSON.parse request.body.read
end

get '/' do
  puts 'hello world'
end

post '/recieve_event' do
  puts "evento que ocorreu no sistema 2, os dados são: #{@request_payload['body']}"
end
