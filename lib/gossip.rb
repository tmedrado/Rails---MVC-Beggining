require 'csv'

class Gossip

  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author

  end

  def save
    CSV.open('gossip.csv', "a+") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = Array.new
    CSV.foreach("gossip.csv") do |ligne|
      gossip_provisorie = Gossip.new([ligne[0], ligne[1]])
      all_gossips << gossip_provisorie
    end
    return all_gossips
  end
    




end
