# c'est le plateau.
# Il doit y avoir une instance de cette classe lors d'une partie.

class Board
  attr_accessor :array_cases, :winner, :game_nil_variable
 
  
  def initialize
    @array_cases      = []
    create_case
    @winner = false
    @game_nil_variable = 0
  end

  # création d'un tableau pour répétorier chaque cases, on l'affecte a string
  def create_case
    @array_cases << BoardCase.new("a1")
    @array_cases << BoardCase.new("a2")
    @array_cases << BoardCase.new("a3")
    @array_cases << BoardCase.new("b1")
    @array_cases << BoardCase.new("b2")
    @array_cases << BoardCase.new("b3")
    @array_cases << BoardCase.new("c1")
    @array_cases << BoardCase.new("c2")
    @array_cases << BoardCase.new("c3")
  end

  # méthode qui lance les joueurs 
  def play_turn(player)
    system('clear')             # remet à zéro
    display()
    puts "\033[1;32m C'est ton tour #{player.player}. Que veux-tu jouer ?"+"\033[0m"
    print "> "
    choice = gets.chomp.downcase     # minuscule 
    @array_cases.each do |i|
      if choice == i.position && i.case == " "
        i.player_choice(player.pawn)
        victory(player)
      elsif choice == i.position && (i.case == "X" || i.case == "O")
        puts "\033[1;31m Choisi une case disponible l'ami !"+"\033[0m"
        sleep (3)
        play_turn(player)
      end
    end
  end 

  # détermine la partie nulle
  def game_nil
    puts @game_nil_variable = @game_nil_variable + 1
  end

  # sénario de victoire
  def victory(player)
    if @array_cases[0].case == "X" && @array_cases[1].case == "X" &&@array_cases[2].case == "X" || @array_cases[0].case == "O" && @array_cases[1].case == "O" && @array_cases[2].case == "O"
      @winner = true
    elsif @array_cases[3].case == "X" && @array_cases[4].case == "X" && @array_cases[5].case == "X" || @array_cases[3].case == "O"  && @array_cases[4].case == "O" && @array_cases[5].case == "O"
      @winner = true
    elsif @array_cases[6].case == "X" && @array_cases[7].case == "X" && @array_cases[8].case == "X" || @array_cases[6].case == "O" && @array_cases[7].case == "O" && @array_cases[8].case == "O"
      @winner = true
    elsif @array_cases[0].case == "X" && @array_cases[3].case == "X" && @array_cases[6].case == "X" || @array_cases[0].case == "O" && @array_cases[3].case == "O" && @array_cases[6].case == "O"
      @winner = true
    elsif @array_cases[1].case == "X" && @array_cases[4].case == "X" && @array_cases[7].case == "X" || @array_cases[1].case == "O" && @array_cases[4].case == "O" && @array_cases[7].case == "O"
      @winner = true
    elsif @array_cases[2].case == "X" && @array_cases[5].case == "X" && @array_cases[8].case == "X" || @array_cases[2].case == "O" && @array_cases[5].case == "O" && @array_cases[8].case == "O"
      @winner = true
    elsif @array_cases[0].case == "X" && @array_cases[4].case == "X" && @array_cases[8].case == "X" || @array_cases[0].case == "O" && @array_cases[4].case == "O" && @array_cases[8].case == "O"
      @winner = true
    elsif @array_cases[6].case == "X" && @array_cases[4].case == "X" && @array_cases[2].case == "X" || @array_cases[6].case == "O" && @array_cases[4].case == "O" && @array_cases[2].case == "O"
      @winner = true
    end
  end

  # tableau d'affichage
  def display 
    puts "       1         2         3     "
  puts " \033[1;35m -------------------------------"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts "A\033[1;35m |    #{@array_cases[0].case}    |    #{@array_cases[1].case}    |    #{@array_cases[2].case}    |"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts " \033[1;35m -------------------------------"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts "B\033[1;35m |    #{@array_cases[3].case}    |    #{@array_cases[4].case}    |    #{@array_cases[5].case}    |"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts " \033[1;35m -------------------------------"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts "C\033[1;35m |    #{@array_cases[6].case}    |    #{@array_cases[7].case}    |    #{@array_cases[8].case}    |"+"\033[0m"
  puts " \033[1;35m |         |         |         |"+"\033[0m"
  puts " \033[1;35m -------------------------------"+"\033[0m"
  end


end