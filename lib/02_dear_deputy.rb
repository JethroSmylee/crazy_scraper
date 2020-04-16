require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

#Data extraction using CSS
doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
deputy = doc.css(("element[class='*']").collect do |deputy|
    binding.pry
    deputy.css('*').text
end

=begin
Maintenant, fini de se faire mâcher le travail par tes gentils formateurs de THP.
Tu dois récupérer la liste complète des députés de France ainsi que leurs adresses e-mail.
Cherche par toi-même le site le plus aisé à scrapper et stocke les informations extraites
dans une array de hashs selon ce format (un peu différent des exercices précédents) :

a = [
  {
    "first_name" => "Jean",
    "last_name" => "Durant",
    "email" => "jean.durant@assemblée.fr"
  },
  {
    "first_name" => "Martin",
    "last_name" => "Dupont",
    "email" => "martin.dupont@assemblée.fr"
  },
  etc
]

Pour les tests, nous t'invitons à te poser et t'inspirer des tests précédents.
Deux tests suffiront.
=end
