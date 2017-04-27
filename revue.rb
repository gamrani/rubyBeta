require_relative "document"

class Revue < Document
  attr_accessor :numero

  def initialize(numero,titre)
    super(titre)
    @numero = numero
  end
  
end
