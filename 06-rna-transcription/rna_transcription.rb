# Given a DNA strand, its transcribed RNA strand is formed by replacing
# each nucleotide with its complement:

# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

# NOTE: If I were to refactor this, I would put the above into a hash
module Complement
  def self.of_dna(string)
    d_to_r = ""
    string.each_char do |let|
      case let
      when "G"
        d_to_r << "C"
      when "C"
        d_to_r << "G"
      when "T"
        d_to_r << "A"
      when "A"
        d_to_r << "U"
      else
        raise ArgumentError, "invalid input"
      end
    end
    return d_to_r
  end

  def self.of_rna(string)
    r_to_d = ""
    string.each_char do |let|
      case let
      when "C"
        r_to_d << "G"
      when "G"
        r_to_d << "C"
      when "A"
        r_to_d << "T"
      when "U"
        r_to_d << "A"
      else
        raise ArgumentError
      end
    end
    return r_to_d
  end
end
