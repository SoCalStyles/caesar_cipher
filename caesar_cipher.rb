# converts string into number
# wraps from z to a
# keeps same case

def caesar_cipher(string, number)
  letter_codes = string.split("").map do |letter|
    x = 0
    new_letter = letter.downcase.ord
    while x < number do
      new_letter == 122 ? new_letter = 97 : new_letter += 1
      (new_letter > 122 || new_letter < 97) ? new_letter -= 1 : new_letter
      x += 1
    end
    (letter == letter.upcase) ? new_letter = new_letter.chr.upcase : new_letter = new_letter.chr
  end
  letter_codes.join("")
end