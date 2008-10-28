require 'test/unit'
require File.join(File.dirname(__FILE__), '../lib/word_hash')

class TestWordHash < Test::Unit::TestCase
  def setup
    @words = File.readlines(File.join(File.dirname(__FILE__), '../resources/italian_filtered_words.txt'))
    @word_hash = WordHash.new(@words)
  end
  
  def test_storage
    assert @words.size > 0
    assert_equal 'abaca', @words.first.strip
    assert_equal 1, (result = @words.select {|w| w.strip == 'ciao'}).size, result.inspect
    assert @word_hash.words.has_key?('ciao'.signature)
  end
  
  def test_some_anagrams
    assert_equal 4, @word_hash.get_anagrams('ciao').size, @word_hash.get_anagrams('ciao').inspect
  end
end