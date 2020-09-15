require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/food_truck'

class FoodTruckTest < MiniTest::Test
  def setup 
    @food_truck = FoodTruck.new("Rocky Mountain Pies")
  end

  def test_it_exists
    assert_instance_of FoodTruck, @food_truck
  end

  def test_it_can_get_name_and_attributes
    assert_equal "Rocky Mountain Pies", @food_truck.name
    expected = {}
    assert_equal expected, @food_truck.inventory
  end
end
