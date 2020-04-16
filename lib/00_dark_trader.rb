require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

#crypto_name extraction using CSS
doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
crypto_name = doc.css("td[class='cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol']").text
binding.pry

=begin

En prenant pour source le site CoinMarketCap, fait un programme qui récupère
le cours de toutes les cryptomonnaies et les enregistre bien proprement
dans un array de hashs.

Ton array devra avoir le format suivant :

a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 },
  etc
]

Pour les tests, inspire-toi de la ressource plus haut.
Il n'y a pas besoin de faire 36 000 tests, il faut juste arriver à tester 1)
le fonctionnement de base de ton programme (pas d'erreur ni de retour vide)
et 2) que ton programme sort bien un array cohérent (vérifier la présence
de 2-3 cryptomonnaies, vérifier que l’array est de taille cohérente, etc.).

#crypto_name extraction using CSS
doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
binding.pry
crypto_name = doc.css("td").select{|crypto_price| link['class'] == "cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"}
crypto_name.each{|title| puts link['title'] }
puts crypto_name.class

#crypto_price extraction using CSS
doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
crypto_price = doc.css("td").select{|crypto_price| link['class'] == "cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"}
crypto_price.each{|crypto_price| puts link[0].text }
puts crypto_price.class
=end
