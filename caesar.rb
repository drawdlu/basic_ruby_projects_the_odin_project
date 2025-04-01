UPPERCASE = "A"
LOWERCASE = "a"

def caesar_cipher(text, key)
  (text.split("").map do |char|
    if is_letter?(char)
      if is_uppercase?(char)
        get_cipher(char, UPPERCASE, key)
      else
        get_cipher(char, LOWERCASE, key)
      end
    else
      char
    end
  end).join
end

def get_cipher(char, letter, key)
  ((((char.ord - letter.ord) + key) % 26) + letter.ord).chr
end

def is_letter?(character) 
  character.match?(/[A-Za-z]/)
end

def is_uppercase?(character)
  character == character.upcase
end

puts caesar_cipher('aaa', 1)
