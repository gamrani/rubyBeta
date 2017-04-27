require 'logger'
require 'logger-application'
#require 'soap/rpc/standaloneServer'

class MyServer < SOAP::RPC::StandaloneServer

  def on_init
    add_method(self,'add','a','b')
  end
  def add(a,b)
    return a+b
  end
end

server = MyServer.new(
'nom','urn:ruby:calculation','localhost',8082
)

server.start
