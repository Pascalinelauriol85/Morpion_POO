# ce sont les joueurs.
# Il doit y avoir 2 instances de cette classe lors d'une partie.


class Player
  attr_accessor :player, :pawn, :score

  def initialize(player, pawn)
    @player = player
    @pawn   = pawn.upcase
    @score  = 0
  end

  def identity
    puts "Salut, #{@player} bienvenue dans l'arêne.  😜  " 
    puts "Tu as choisi le pion #{@pawn}"
    puts ""
  end

  def win_count
    @score = @score + 1
  end 

end