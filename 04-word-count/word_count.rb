def words(string)
  word_count = {}

  string.split.each do |word|
    word_count[word] = 1
    # end
    #   return word_count
    # ^^^ finish / fix above
  end
end

def words(phrase)
  split_phrase = phrase.strip.split(/\s+/)
  word_count = {}

  split_phrase.each do |word|
    word_count[word] = split_phrase.count(word)
  end
  return word_count
end
