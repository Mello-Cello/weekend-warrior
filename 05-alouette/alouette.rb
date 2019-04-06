class Alouette
  $refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  JE_TE_PLUMERAI = "Je te plumerai "
  @@et_array = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  BRIDGE = "Alouette!\nAlouette!\nA-a-a-ah"
  # attr_reader :bridge
  # def initialize
  # @bridge = "Alouette!\nAlouette!\nA-a-a-ah"
  # end

  def self.lines_for_verse(verse_num)
    # return an array of strings, without repeats
    # example, lines_for_verse(2):
    # ["Et les yeux!", "Et le bec!", "Et la tête!"]

    i = 0
    lines_for_verse = []
    (verse_num + 1).times do
      lines_for_verse.insert(0, "Et #{@@et_array[i]}!")
      i += 1
    end

    return lines_for_verse
  end

  def self.verse(verse_num)
    # builds the requested verse number
    # returns a string with \n after each line

    this_verse = ""

    2.times do
      this_verse << "#{JE_TE_PLUMERAI}#{@@et_array[verse_num]}.\n"
    end

    lines_for_verse(verse_num).each do |line|
      this_verse << line + "\n" + line + "\n"
    end

    this_verse << BRIDGE

    return this_verse
  end

  def self.sing
    # build the entire song
    # blank line between verses and $refrains
    # returns a string
    song = ""
    i = 0
    @@et_array.length.times do
      song << "#{$refrain}\n\n#{self.verse(i)}\n\n"
      i += 1
    end
    song << $refrain
    return song
  end
end
