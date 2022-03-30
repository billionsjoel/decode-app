CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => 1,
  '..---' => 2,
  '...--' => 3,
  '....-' => 4,
  '.....' => 5,
  '-....' => 6,
  '--...' => 7,
  '---..' => 8,
  '----.' => 9,
  '-----' => 0
}.freeze

def decode_char(str)
  if CODE.include?(str)
     CODE[str]
  else
    ''
  end
end

def decode_word(str)
string = []
  str.split.each do |w|
    string.push(CODE[w])
  end
  string.join
end

def decode(str)
  word = ''
  str.strip.tr('/', ' ').split('   ').each do |w|
    word += "#{decode_word(w)} "
  end
  word
end

puts decode_char(".-")
puts decode_word("-- -.--")
puts decode_word("-- -.--   -. .- -- .")
puts decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")