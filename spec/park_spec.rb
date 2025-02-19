require './lib/park'
require './lib/vehicle'
require './lib/passenger'
require 'pry'

RSpec.describe Park do 
  before(:each) do
    @park = Park.new("Great Sand Dunes", 30)
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#initialize' do
    it 'can initializes' do
      expect(@park).to be_an_instance_of(Park)
    end
  end

  it 'has attributes' do
    expect(@park.name).to eq("Great Sand Dunes")
    expect(@park.admission).to eq(30)
  end

  describe '#vehicles' do
    it 'adds list of vehicles to park' do
      expect(@park.vehicle).to eq([])
      @park.add_vehicles(@vehicle)
    end
  end
    
  describe '#all_passengers' do
    it 'makes a list of all passengers in vehicle that came into park' do
      expect(@park.passengers).to eq([])
      @park.all_passengers(@charlie)
      @park.all_passengers(@jude)
      @park.all_passengers(@taylor)
    end
  end
  
  # describe '#revenue' do
  #   it 'gives total admission price per adult'
  #   end 
  # end
  

end