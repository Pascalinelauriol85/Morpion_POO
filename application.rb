# cette classe va nous permettre de lancer le jeu.
# Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.


require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board_case'
require 'app/board'
require 'app/game'
require 'app/player'
require 'views/show'




@my_game = Game.new
@my_game.perform