class Vehicle 
  attr_reader :year,
              :make,
              :model,
              :speeding,
              :passengers
  attr_accessor :adult,
                :age
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model 
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding 
  end

  def speed
    @speeding = true 
  end

  def add_passenger(name)
    @passengers << name
  end

  def num_adults
    @passengers.count do |passenger|
      passenger.adult?
    end 
  end
 
end
