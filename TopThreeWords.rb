def top_three_words(text)
  # видалення всіх символів крім літер, апострофів і пробілів
  text = text.gsub(/[^a-zA-Z'\s]/, '')

  # створення хеша для збереження кількості входжень кожного слова
  word_count = Hash.new(0)

  # відокремлення тексту на слова і збільшення лічильника для кожного слова
  text.split.each do |word|
    word_count[word.downcase] += 1
  end

  # сортування хеша за спаданням кількості входжень і вибір топ-3 слів
  top_words = word_count.sort_by {|word, count| -count}.map {|word, count| word}[0..2]

  return top_words
end
text = 'In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.'
puts top_three_words(text)
