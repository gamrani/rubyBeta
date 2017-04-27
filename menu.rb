require 'csv'
require_relative "adherent"
require_relative "Bibliotheque"
require_relative "ordinateur"

b=Bibliotheque.new;
i=true

while i==true

fichier = File.open("menu.txt","r")
fichier.each_line{
  |choix|

  puts choix
}


choix = gets
choix = choix.to_i


case choix
when 1
   puts "Nom : "
   nom = gets
   puts "Prenom : "
   prenom = gets
   puts "statut"
   statut = gets
  a=Adherent.new(nom,prenom,statut)
  b.addAdherent(a)

when 2
  puts "Titre : "
  titre = gets
  puts "Auteur : "
  auteur = gets

  l=Livre.new(titre,auteur)
  b.addDocument(l)
when 3
  puts "Marque : "
  marque = gets
  puts "Operating System : "
  os = gets
  pc=OrdinateurPortable.new(marque,os)
when 4
  puts "id = Numero "
  puts "saisir l'identifiant de votre adherent : "
  id = gets
  id=id.to_i
  b.rechercheAdherent(id)
when 5
when 6
when 7
  collection = b.adherents
  puts collection.inspect
  collection.each{
    |item|
    puts item
  }
when 8
  collection = b.documents
  puts collection.inspect
  collection.each{
    |item|
    puts item
  }
when 9
  collection = b.materiels
  puts collection.inspect
  collection.each{
    |item|
    puts item
  }
when 10
when 11
when 12
when 13
when 14
   puts "saisir l'id de l'adherent : "
   id=gets
   id=id.to_i
   b.deleteAdherent(id)
when 15
  puts "saisir l'id du materiel : "
  id=gets
  id=id.to_i
  b.deleteMateriel(id)
when 16
  puts "saisir l'id du document : "
  id=gets
  id=id.to_i
  b.deleteDocument(id)
when 17
when 18
when 19
when 20
when 21
  biblio = CSV.read('menu.csv')
  CSV.foreach('menu.csv'){
    |row|
    row.each{
      |item|
      print item+" "
    }
    puts ""
  }
when 22
  CSV.open("output.csv","w") {
    |f|
    b.adherents.each{
      |x|
      f.push(x)
    }

  }
when 23
when 24
  i=false
end
end
