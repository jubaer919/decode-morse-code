def decode_char(char)
  decoder = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
              '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
              '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
              '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
              '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
              '---..' => '8', '----.' => '9', '-----' => '0' }
  decoder[char]
end

def decode_word(word_code)
  word_code.split.map do |char|
    decode_char(char)
  end.join
end

def decode(morse_code)
  morse_code.split('   ').map do |char|
    decode_word(char)
  end.join(' ')
end

puts decode_char('.-')
puts decode_word('.- --')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
