require_relative "volume"

class Dictionnaire < Volume
  attr_accessor :theme

  def initialize(theme,auteur,titre)
   super(titre,auteur)
   @theme=theme
  end

end
