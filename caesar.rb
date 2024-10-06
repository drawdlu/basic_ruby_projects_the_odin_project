UPPERCASE = "A"
LOWERCASE = "a"

def caesar_cipher(text, key)
  (text.split("").map do |char|
    if is_letter?(char)
      if is_uppercase?(char)
        get_cipher(char, UPPERCASE)
      else
        get_cipher(char, LOWERCASE)
      end
    else
      char
    end
  end).join
end

def get_cipher(char, letter)
  ((((char.ord - letter.ord) + 5) % 26) + letter.ord).chr
end

def is_letter?(character) 
  character.match?(/[A-Za-z]/)
end

def is_uppercase?(character)
  character == character.upcase
end

p caesar_cipher("What a string!", 5)
#=> "Bmfy f xywnsl!"