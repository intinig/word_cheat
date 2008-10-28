require File.join(File.dirname(__FILE__), 'string_extensions')

class WordHash
  attr_reader :words
  
  def initialize(wordlist)
    @words = {}
    wordlist.each do |word|
      if @words.has_key?(w = word.strip.signature)
        @words[w] << word.strip
      else
        @words[w] = [word.strip]
      end
    end
  end
  
  def get_anagrams(word)
    wordlist = @words.keys.select {|w| word.contains?(w)}
    result = []
    wordlist.each do |w|
      result << @words[w]
    end
    result
  end
end