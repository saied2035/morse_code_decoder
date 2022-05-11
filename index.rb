def decode_char(morse_char)
  morse_code_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
    '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_code_hash[morse_char]
end

def decode_word(morse_word)
  characters = morse_word.split
  decoded_character = ''
  characters.each { |char| decoded_character += decode_char(char) }
  decoded_character
end
