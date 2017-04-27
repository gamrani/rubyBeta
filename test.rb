require_relative "Bibliotheque"

biblio = Bibliotheque.new()

a = Adherent.new("mamadou","mountagha","ETUDIANT")
a2 = Adherent.new("Gamrani","youssef","ENSEGNANT")
a3 = Adherent.new("Nihou","youssef","ENSEGNANT")

l1=Livre.new("L1","ait lahcen")
l2=Livre.new("L2","ait lahcen")
r1=Revue.new(1,"R1")
r2=Revue.new(2,"R2")
d1=Dictionnaire.new("Theme1","auteur1","titre1")
d2=Dictionnaire.new("Theme2","auteur2","titre2")
bd1=BandeDessine.new("dessinateur1","auteur1","titre1")
bd2=BandeDessine.new("dessinateur2","auteur2","titre2")
linux=OrdinateurPortable.new("Lenovo","Linux")
windows=OrdinateurPortable.new("Hp","Windows")

biblio.addAdherent(a)
biblio.addAdherent(a2)
biblio.addAdherent(a3)

biblio.addDocument(l1)
biblio.addDocument(l2)
biblio.addDocument(r1)
biblio.addDocument(r2)
biblio.addDocument(d1)
biblio.addDocument(d2)
biblio.addDocument(bd1)
biblio.addDocument(bd2)
biblio.addMateriel(linux)
biblio.addMateriel(windows)

puts "--Transaction--"
a.emprunter(l2,biblio)
a3.emprunter(bd1,biblio)
puts "--Transaction--"
a2.emprunter(l2,biblio)
puts "--Transaction--"
a2.emprunter(l1,biblio)
puts "--Transaction--"
a.rendre(l2,biblio)
puts "--Transaction--"
a2.emprunter(l2,biblio)
puts "result : "
a.afficherEmprunts()
a2.afficherEmprunts()
a3.afficherEmprunts()

biblio.afficherFonds()
