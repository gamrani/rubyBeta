require_relative "document"

class Volume < Document
  attr_accessor :auteur

  def initialize(titre,auteur)
   super(titre)
   @auteur=auteur
  end

  
end
