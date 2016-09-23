require 'minitest/autorun'
require 'minitest/pride'
require './lib/check_yourself'

class CheckYourselfTest < Minitest::Test

  def test_can_it_create_Check_Yourself
    assert_instance_of CheckYourself, CheckYourself.new
  end

  def test_does_it_have_suggestions
    assert_equal 6, CheckYourself.suggestions.length
  end

  def test_can_it_suggest_something
    assert_equal true, CheckYourself.get_random_key.between?(1,6)
  end

  def test_does_it_select_something_randomly
    refute_equal nil, CheckYourself.give_a_suggestion
  end

end
