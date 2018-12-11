class Pirate

  attr_accessor :name, :weight, :height

  @@all = []
  def initialize(pirate_detail)
    @name = pirate_detail[:name]
    @weight = pirate_detail[:weight]
    @height = pirate_detail[:height]
    @@all << self
  end

  def self.all
    @@all
  end
end
