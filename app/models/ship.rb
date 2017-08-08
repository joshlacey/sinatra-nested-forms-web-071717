class Ship
  attr_accessor :name, :type, :booty

  @@all = []


  def self.create_all(params)
    params[:pirate][:ships].each do |ship|
      new_ship = Ship.new
      new_ship.name = ship[:name]
      new_ship.type = ship[:type]
      new_ship.booty = ship[:booty]
      @@all << new_ship
    end
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
