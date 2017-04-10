module Towable
  def cantow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@numberofvehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @currentspeed = 0
    @@numberofvehicles += 1
  end

  def speedup(number)
    @currentspeed += number
    puts "pusuch rase to speed up #{number} mph."
  end

  def brake(number)
    @currentspeed -= number
    puts " push break to stop #{number} mph."
  end

  def currentspeed
    puts "your car is running #{@current_speed} mph."
  end

  def shutdown
    puts "you are now stoped"
  end

  def self.gasmileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spraypaint(color)
    self.color = color
    puts "You new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBEROFDOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBEROFDOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

honda = MyCar.new(2010, 'civic', 'red')
honda.speedup(120)
honda.currentspeed
honda.speedup(100)
honda.currentspeed
honda.brake(10)
honda.currentspeed
honda.brake(0)
honda.currentspeed
honda.shutdown
MyCar.gasmileage(9, 200)
honda.spraypaint("red")
puts honda
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
