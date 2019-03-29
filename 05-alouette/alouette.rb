class Alouette
  refrain = "Alouette, gentille alouette,
  Alouette, je te plumerai"

  ET_ARRAY = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  
  allouette = "Alouette!"
  aaaah = "A-a-a-ah"

  def self.lines_for_verse(verse_num)
    # return an array of strings, without repeats
    # example, lines_for_verse(2):
    # ["Et les yeux!", "Et le bec!", "Et la tête!"]

    i = 0
    lines_for_verse = []
    (verse_num + 1).times do
      lines_for_verse.insert(0, "Et #{ET_ARRAY[i]}!")
      i += 1
    end
    return lines_for_verse
  end

  def self.verse(verse_num)
    # builds the requested verse number
    # returns a string with \n after each line
  end

  def self.sing
    # build the entire song
    # blank line between verses and refrains
    # returns a string
  end
end

# -------------------

# et1 = "la tête"
# et2 = "le bec"
# et3 = "les yeux"
# et4 = "le cou"
# et5 = "les ailes"
# et6 = "les pattes"
# et7 = "la queue"
# et8 = "le dos"

#     attr_reader :refrain, :et_array, :allouette, :aaaah

#   def initialize
#     refrain = "Alouette, gentille alouette,
# Alouette, je te plumerai"

#     et_array = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

#     allouette = "Alouette!"
#     aaaah = "A-a-a-ah"
#   end
