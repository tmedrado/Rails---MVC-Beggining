require_relative 'controller'

class Router


  def initialize
    @controller = Controller.new
  end

  def perform
    puts "Welcome to Gossip Project!"
  
    while true

      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip

      when 2
        puts "Tu as choisi de voir les gossips" 
        @controller.create_gossip

      when 4
        puts "À bientôt !"
        break

      else
        puts "Ce choix n'existe pas, merci de ressayer" 

      end
    end
  end


end
