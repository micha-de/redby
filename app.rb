require 'environment'

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

get '/' do
  "Hello world from redby"
end

get '/favicon.ico' do
  ""
end


