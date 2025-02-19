require './lib/passenger'
require 'pry'

RSpec.describe Passenger do
  before(:each) do 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@charlie).to be_an_instance_of(Passenger)
      expect(@taylor).to be_an_instance_of(Passenger)
    end
  end

  it 'has attributes' do
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
  end

  it 'determines if passenger is an adult' do
    expect(@charlie.adult?).to eq(true)
    expect(@taylor.adult?).to eq(false)
  end

  it 'determines if passenger can drive' do
    expect(@charlie.driver?).to eq(false)
    @charlie.drive
    expect(@charlie.driver?).to eq(true)
  end

end

