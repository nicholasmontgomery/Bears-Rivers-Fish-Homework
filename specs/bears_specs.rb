require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class BearsTest < MiniTest::Test

  def setup()
    @bears = Bears.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Flappy")
    @fish2 = Fish.new("Floater")
    @fish3 = Fish.new("Flier")
  end

  def test_bear_has_name()
    assert_equal("Yogi", @bears.name)
  end

  def test_bear_type()
    assert_equal("Grizzly", @bears.type)
  end

  def test_bear_stomach_starts_empty()
    assert_equal(0, @bears.stomach_count())
  end

  def test_bear_eats_fish()
    @bears.eats_fish(@fish1)
    assert_equal(1, @bears.stomach_count())
  end

end
