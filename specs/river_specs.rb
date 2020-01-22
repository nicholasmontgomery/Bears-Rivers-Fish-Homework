require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", @fish)

    @fish1 = Fish.new("Flappy")
    @fish2 = Fish.new("Floater")
    @fish3 = Fish.new("Flier")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_fish_start_at_3
    assert_equal(3, @fish.count())
  end

  def test_fish_eaten_by_bear
      fish_eaten_by_bear(@fish1)
    assert_equal(2, @fish.count())
  end
end
