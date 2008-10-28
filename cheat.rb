#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), 'lib/word_hash')

words = File.readlines(File.join(File.dirname(__FILE__), 'resources/italian_filtered_words.txt'))
word_hash = WordHash.new(words)

ARGV.each do |arg|
  word_hash.get_anagrams(arg.downcase).each do |anagram|
    puts anagram
  end
end
  