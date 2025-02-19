class Park
  attr_reader :name,
              :admission,
              :vehicle,
              :passengers
  def initialize(name, admission)
    @name = name
    @admission = admission
    @vehicle = []
    @passengers = []
  end

  def add_vehicles(vehicle)
    @vehicle << vehicle
  end 
  
  def all_passengers(passenger)
    @passengers << passenger
  end

end