class Passenger
  attr_reader :name,
              :age,
              :adult
  def initialize(passenger_details)
    @name = passenger_details["name"]
    @age = passenger_details["age"]
    @adult = false
    @driver = false
  end

  def adult?
    @age >= 18
  end
  
  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end