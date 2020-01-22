class River

attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def count()
    return @fish.count()
  end

  def fish_eaten_by_bear(fish)
    return @fish.delete(fish)
  end
end
