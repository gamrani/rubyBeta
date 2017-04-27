require_relative "volume"

class BandeDessine < Volume

   attr_accessor :dessinateur

   def initialize(dessinateur,auteur,titre)
     super(titre,auteur)
     @dessinateur=dessinateur

   end

end
