class Fixnum
  define_method(:allergies) do
    results_array = []
    allergy_score = self
    allergy_values = {
      "eggs" => 1,
      "peanuts" => 2,
      "shellfish" => 4,
      "strawberries" => 8,
      "tomatoes" => 16,
      "chocolate" => 32,
      "pollen" => 64,
      "cats" => 128,
    }

    counter = 128
    until counter < 1
        if allergy_score >= counter
           allergy_score = allergy_score - counter
           results_array.push(allergy_values.key(counter))
        end
      counter /=2
    end
    results_array.join(", ")
  end
end
