@@id=0
class Materiel
   attr_accessor :enPanne,:id
   @@id=@@id+1
   @id=@@id.to_i

  def initialize()
  @enpanne=false
 end

end
