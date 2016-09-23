class CheckYourself

  def self.give_a_suggestion
    suggestions[get_random_key]
  end

  private
  def self.suggestions
    {
      1 => "Take a walk",
      2 => "Get some coffee",
      3 => "Eat a snack",
      4 => "Get the hell out of there",
      5 => "Use smiler",
      6 => "Use inspiration"
    }
  end

  def self.get_random_key
    rand(1..suggestions.count)
  end


end
