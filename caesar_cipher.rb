def caesar_cipher(string, number)
  letter_codes = string.split("").map do |letter|
    x = 0
    new_letter = letter.downcase.ord
    while x < number do
      if (new_letter == 122)
        new_letter = 96 
      end
      new_letter += 1
      if (new_letter > 122 || new_letter < 97)
        new_letter -= 1 
      end
      x += 1
      new_letter
    end
    if (letter == letter.upcase)
      new_letter = new_letter.chr.upcase
    else
      new_letter = new_letter.chr
    end
  end
  return letter_codes.join("")
end

# converts string into number
# wraps from z to a
# keeps same case
