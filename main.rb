LOWERCASE_STARTING = "a".ord
LOWERCASE_ENDING = "z".ord
UPPERCASE_STARTING = "A".ord
UPPERCASE_ENDING = "Z".ord

def caesar_cipher(text, shift_count)
  word = ""

  text.chars().each do |char|
    ascii_char = char.ord
    if (ascii_char <= LOWERCASE_ENDING and ascii_char >= LOWERCASE_STARTING)
      value = (ascii_char  - LOWERCASE_STARTING + shift_count) % 26
      word += (value + LOWERCASE_STARTING).chr
    elsif (ascii_char <= UPPERCASE_ENDING and ascii_char >= UPPERCASE_STARTING)
      value = (ascii_char  - UPPERCASE_STARTING + shift_count) % 26
      word += (value + UPPERCASE_STARTING).chr
    else
      word += char
    end
  end
  word
end

puts caesar_cipher("What a string!", 5)
