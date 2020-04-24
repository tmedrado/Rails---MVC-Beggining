require 'pry'

class View

  def create_gossip
    params = Hash.new
    puts " Who is the Author?"
    author = gets.chomp 
    puts " What is the Content?"
    content = gets.chomp
    params = {"author" => author, "content"=> content}

  end
  




end

binding.pry