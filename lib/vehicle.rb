class Vehicle
  attr_reader :year,
              :make,
              :model,
              :passengers,
              :speeder

  def initialize(year, make, model)
          @year = year
          @make = make
         @model = model
    @passengers = []
       @speeder = false
  
  end

  def speeding?
    @speeder
  end
  
  def speed
   @speeder = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

end