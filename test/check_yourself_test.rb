require 'minitest/autorun'
require 'minitest/pride'
require './lib/check_yourself'


class CheckYourselfTest < Minitest::Test

  def test_can_it_create_Check_Yourself
    assert_instance_of CheckYourself, CheckYourself.new
  end

  def test_does_it_have_suggestions
    check = CheckYourself.new
    assert_equal 5, check.suggestions.length
  end

  def test_can_it_suggest_something
    check = CheckYourself.new
    assert_equal true, check.get_random_key.between?(1,5)
  end

  def test_does_it_select_something_randomly
    check = CheckYourself.new
    refute_equal nil, check.give_a_suggestion
  end

end
