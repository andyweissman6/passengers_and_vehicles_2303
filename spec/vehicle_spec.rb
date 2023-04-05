require 'rspec'
require './lib/vehicle'
require './lib/passenger'
require './lib/park'


RSpec.describe Vehicle do
  describe '#initialize' do
    it "exists" do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")      
      
      expect(@vehicle).to be_a(Vehicle)
    end

    it "has attributes" do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")      

      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end
  
  describe '#speeding?' do
    it "determines if @vehicle is speeding" do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")      
    
      expect(@vehicle.speeding?).to eq(false)
      # require 'pry'; binding.pry
      @vehicle.speed
      expect(@vehicle.speeding?).to eq(true)
    end
  end

  describe '#add passengers' do
    it "adds passengers to @vehicle" do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")      
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(@vehicle.passengers).to eq([])
      @vehicle.add_passenger(charlie)
      @vehicle.add_passenger(jude)
      @vehicle.add_passenger(taylor)

      expect(@vehicle.passengers).to eq([charlie, jude, taylor])
      expect(@vehicle.passengers.count).to eq(3)

    end

  end

end




# > charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# # => #<Passenger:0x00007fe0da1ec450...>

# > jude = Passenger.new({"name" => "Jude", "age" => 20})    
# # => #<Passenger:0x00007fe0da2730e0...>

# > taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# # => #<Passenger:0x00007fe0da2cf1b0...>

# > @vehicle.add_passenger(charlie)    

# > @vehicle.add_passenger(jude)    

# > vehicle.add_passenger(taylor)    

# > vehicle.passengers
# # => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

# > vehicle.num_adults
# # => 2
