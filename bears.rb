class Bears

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count()
    return @stomach.count
  end

  def eats_fish(fish_name)
    @stomach.push(fish_name)
  end
end
