class Phrase

  def initialize phrase
    @phrase = phrase
    @histgram = {}
  end

  def word_count
    @phrase.scan(/[[:alpha:]'0-9]+/).map!{ |word| word.downcase.gsub(/^'|'$/, '')}.each{|word| @histgram[word].nil? ? @histgram[word] = 1 : @histgram[word]+=1}
    @histgram
  end


  '¡Hola! ¿Qué tal? Привет!'.scan(/[\w'0-9]+/)


end
