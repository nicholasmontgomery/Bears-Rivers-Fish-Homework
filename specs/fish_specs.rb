require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Flappy")
    @fish2 = Fish.new("Floater")
    @fish3 = Fish.new("Flier")
  end
end
