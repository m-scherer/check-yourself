require 'pry'

class CheckYourself

  def suggestions
    {
      1 => "Take a walk",
      2 => "Get some coffee",
      3 => "Eat a snack",
      4 => "Get the hell out of there"
      5 => "Use Smiler"
    }
  end

  def get_random_key
    rand(suggestions.count)
  end

  def give_a_suggestion
    suggestions[get_random_key]
  end

end
