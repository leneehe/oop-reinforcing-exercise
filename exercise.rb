class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

class Trip

  def initialize
    @destinations = []
  end

  def add=(location)
    @destinations << location
  end

  def itinerary
    puts "Begin trip."
    @destinations.each_cons(2) do |locations|
      puts "Travelled from #{locations[0].name} to #{locations[1].name}."
    end

    puts "Ended Trip"
  end

end

my_trip = Trip.new
my_trip.add = Location.new('Toronto')
my_trip.add = Location.new('Ottawa')
my_trip.add = Location.new('Montreal')
my_trip.add = Location.new('Quebec City')
my_trip.add = Location.new('Halifax')
my_trip.add = Location.new("St. John's")
my_trip.add = Location.new("New York")
p my_trip
my_trip.itinerary
