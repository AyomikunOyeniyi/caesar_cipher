def caesar_cipher(string, shift)
  string_array = string.split("")
  
  ciphered_num_array = string_array.map {|letter| letter.ord + shift}

  ciphered_num_array.map! do |number|
    number > 122 ? 97 + (number - 122) : number
  end

  ciphered_num_array

end

p caesar_cipher("Whav a day", 5)