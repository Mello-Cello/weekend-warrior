require "pry"

# Option 1: Convert the letters to an array of numbers. Compare each number to the one in the next array position. If this >= next, add this to arabic_num. If this < next, subtract this from arabic_num.
# Time complexity: O(n) where n is the length of the array. Space complexity: O(1) though the space used is double the size of the original string.

# Option 2: For each letter in the string, store its corresponding value from the hash in a variable "this" and store the next one's value in a variable "next". Compare the two. If this >= next, add this to arabic_num. If this < next, subtract this from arabic_num.
# Time complexity: O(n) where n is the length of the array. Space complexity: O(1) and the space used is only the size of the original string plus a few variables.

module Roman
  def self.reverter(string)
    roman_nums = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1,
    }

    i = 0
    arabic_num = 0

    return roman_nums[string] if string.length == 1
    # LOOP THROUGH THE CHARACTERS IN THE STRING
    # COMPARE EACH TO THE NEXT CHARACTER
    # ADD OR SUBTRACT AS APPROPRIATE
    (string.length - 1).times do
      num_this = roman_nums[string[i]]
      num_next = roman_nums[string[i + 1]]

      #   puts "string: #{string} ... num_this: #{num_this} ...  num_next: #{num_next}"

      if num_this >= num_next
        arabic_num += num_this
      elsif num_this < num_next
        arabic_num -= num_this
      end
      i += 1
    end

    # ADD THE LAST DIGIT
    arabic_num += roman_nums[string[-1]]

    return arabic_num
  end
end
