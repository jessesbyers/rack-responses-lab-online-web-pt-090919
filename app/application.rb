require 'rack'

class Application
 def call(env)
   return [ 200, {'Content-Type' => 'text/html'}, custom_response ]
 end

 def custom_response
   binding.pry
   if Time.now < 12
     ["<strong>Good Morning!<strong>"]
   else
     ["<strong>Good Afternoon!</strong>"]
   end
  end
 end

 # run MyServer.new


#    (Time.now < 12 ?  ["<strong>Good Morning!<strong>"] : ["<strong>Good Afternoon!</strong>"]
#  end
# end
