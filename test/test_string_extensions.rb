require 'test/unit'
require File.join(File.dirname(__FILE__), '../lib/string_extensions')

class TestStringExtensions < Test::Unit::TestCase
  def test_signature
    assert_equal "acccehinoop", "capocchione".signature
  end

  def test_contains_should_correctly_work
    assert "carlonecchio".contains?('carlone')
    assert "carlonecchio".contains?('ecchio')
    assert "carlonecchio".contains?('arlcc')
    assert "carlonecchio".contains?('chilo')
  end
end

