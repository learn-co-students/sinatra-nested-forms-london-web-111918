class Pirate

  attr_accessor :name, :weight, :height

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]
  end

  @@all = []

  def self.all
    @@all
  end

end
