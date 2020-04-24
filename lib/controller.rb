require_relative 'gossip'
require_relative 'view'

class Controller

  def initialize
    @view = View.new

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params["author"], params["content"])
    gossip.save
  end


end

