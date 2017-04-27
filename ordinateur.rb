require_relative "materiel"
require_relative "empruntable"


class OrdinateurPortable < Materiel
  include Empruntable

  attr_accessor :marque,:os

  def initialize(marque,os)
    super()
    @marque=marque
    @os=os
    puts "Vous avez ajouter : "
    print "#{@marque} sous #{@os}"
  end

  


end
