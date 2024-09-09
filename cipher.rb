def caesar_cipher(string, shift)
  string_array = string.split("")
  
  ciphered_num_array = string_array.map {|letter| letter.downcase.ord + shift}

  ciphered_num_array.map! do |number|
    number > 122 ? 97 + (number - 122) : number
  end

  ciphered_string_array = ciphered_num_array.map {|number| number.chr}

  ciphered_string_array.map! do |letter|
    letter == "%" ? " " : letter
  end

  cipher = ciphered_string_array.join("").capitalize

end

p caesar_cipher("Whav a day?", 5)