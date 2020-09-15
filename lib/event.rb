class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.inventory.keys.include?(item)
    end
  end
  
  def total_inventory
    items = @food_trucks.reduce(Hash.new {|h, k| h[k] = {}}) do |collector, truck|
      truck.inventory.each do |item, quantity|
        if !collector[item][:quantity].nil?
          collector[item][:quantity] += quantity
          collector[item][:food_trucks] << [truck]
        else
          collector[item][:quantity] = quantity
          collector[item][:food_trucks] = [truck]
        end
        collector[item][:food_trucks] = collector[item][:food_trucks].flatten.uniq
      end
      collector
    end
  end
end

