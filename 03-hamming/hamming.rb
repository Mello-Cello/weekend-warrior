class Hamming
  # attr_reader :string_A, :string_B

  def self.compute(string_A, string_B)
    raise ArgumentError, "Parameters must be of the same length." if string_A.length != string_B.length

    hamming_distance = 0
    a_string = string_A.split(//)
    b_string = string_B.split(//)

    a_string.each_with_index do |letter, index|
      hamming_distance += 1 if letter != b_string[index]
    end
    return hamming_distance
  end
end

# Kate's solution:
# string_A.each_char.zip(string_B.each_char).count { |a,b| a != b }
