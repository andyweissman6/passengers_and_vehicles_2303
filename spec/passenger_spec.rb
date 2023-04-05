require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Passenger do
  describe '#initialize' do
    it "exists" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
      
      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it "has attributes" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
      expect(taylor.name).to eq("Taylor")
      expect(taylor.age).to eq(12)
    end
  end

  describe '#adult?' do
    it "determines if passenger is adult" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

     expect(charlie.adult?).to eq(true)
     expect(taylor.adult?).to eq(false)
    end
  end

  describe '#driver?' do
    it "tells if passenger is driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

      expect(charlie.driver?).to eq(false)
      expect(taylor.driver?).to eq(false)
    end
  end

  describe '#drive' do
    it "lets passenger drive" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
      
      expect(charlie.driver?).to eq(false)
      charlie.drive
      expect(charlie.driver?).to eq(true)

      expect(taylor.driver?).to eq(false)
      taylor.drive
      expect(taylor.driver?).to eq(false)

    end
  end
end


#   pry(main)> charlie.driver?
# # => false

# pry(main)> charlie.drive

# pry(main)> charlie.driver?
# # => true
# end


 


# pry(main)> charlie.adult?
# # => true

# pry(main)> taylor.adult?
# # => false

# pry(main)> charlie.driver?
# # => false

# pry(main)> charlie.drive

# pry(main)> charlie.driver?
# # => true