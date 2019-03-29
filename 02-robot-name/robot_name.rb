
class Robot
  attr_accessor :name

  def initialize
    @name = name_generator
  end

  def name_generator
    letters = [*("A".."Z")].shuffle
    nums = ("0".."9").to_a.shuffle
    temp_name = letters[0] + letters[1] + nums[0] + nums[1] + nums[2]

    return temp_name
  end

  def reset
    @name = name_generator
    return @name
  end
end
