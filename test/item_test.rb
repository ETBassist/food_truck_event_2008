require 'minitest/autorun'
require 'minitest/pride'

class ItemTest < MiniTest::Test
  def setup
    @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    @item2 = Item.new({name: 'Apple Pie (Slice)', price: "$2.50"})
  end

  def test_it_exists
    assert_instance of Item, @item1
    assert_instance of Item, @item2
  end
end
