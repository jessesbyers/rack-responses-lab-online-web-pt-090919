require 'rack'

class MyServer
 def call(env)
   return [ 200, {'Content-Type' => 'text/html'}, custom_response ]
 end

 def custom_response
   (Time.now < 12 ?  ["<strong>Good Morning!<strong>"] : ["<strong>Good Afternoon!</strong>"]
 end
end

run MyServer.new
