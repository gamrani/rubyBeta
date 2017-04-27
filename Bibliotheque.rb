require_relative "adherent"
require_relative "bd"
require_relative "dictionnaire"
require_relative "document"
require_relative "empruntable"
require_relative "livre"
require_relative "materiel"
require_relative "ordinateur"
require_relative "revue"
require_relative "volume"


class Bibliotheque
   attr_reader :documents,:adherents,:materiels,:emprunts

   def initialize
     @documents=[]
     @adherents=[]
     @materiels=[]
     @emprunts ={}
   end

   def addAdherent(adherent)
     @adherents.push(adherent)
   end
   def addDocument(document)
     @documents.push(document)
   end
   def addMateriel(materiel)
     @materiels.push(materiel)
   end
   def afficherFonds()
     @emprunts.each{
       |key,value|

       puts "#{key} : #{value}"
     }
   end
def rechercheAdherent(id)

  @adherents.each{
    |item|
    if(item.id==id) then
       puts item.nom
       puts item.prenom
       puts item.statut
    end
  }
end
def deleteAdherent(id)
  @adherents.each{
    |item|
    if(item.id==id) then
       @adherents.delete(item)

    end
  }
  puts @adherents.inspect
end
def deleteMateriel(id)
  @materiels.each{
    |item|
    if(item.id==id) then
       @materiels.delete(item)

    end
  }
  puts @materiels.inspect
end

def deleteDocument(id)
  @documents.each{
    |item|
    if(item.id==id) then
       @documents.delete(item)

    end
  }
  puts @documents.inspect

end

end
