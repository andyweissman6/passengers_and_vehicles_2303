class Passenger
  attr_reader :name,
              :age,
              :attributes
  def initialize(attributes)
    @name = attributes["name"]
    @age  = attributes["age"]
    @license = false
  end
  
  def adult?
    if @age >= 18
      true
    else
      @age < 18
      false
    end
  end

  def driver?
    @license
  end
  
  def drive
    @license = true if adult? == true
    
  end
  # require 'pry'; binding.pry
end