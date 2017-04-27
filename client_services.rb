require 'soap/wsdlDriver'

wsdl_url = 'http://localhost/hello?wsdl'

service = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver

service.wiredump_file_base='soapmsgs'

result=service.ditBonjour('Objius')

puts "#{result}"
