class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(ship_detail)
      @name = ship_detail[:name]
      @type = ship_detail[:type]
      @booty = ship_detail[:booty]
      @@all << self
    end

      def self.all
        @@all
      end

      def self.clear
        @@all.clear
      end
end
