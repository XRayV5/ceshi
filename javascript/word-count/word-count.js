var Words = function(){}

Words.prototype.count = function(text){
  var result = {};
  text.toLowerCase().split(' ').forEach(function(char){


    var rgx = new RegExp(char, 'g')
    result[char] = text.toLowerCase().match(rgx).length;
  })


  return result;
}

module.exports = Words;



// @phrase.scan(/[[:alpha:]'0-9]+/).map!{ |word| word.downcase.gsub(/^'|'$/, '')}.each{|word| @histgram[word].nil? ? @histgram[word] = 1 : @histgram[word]+=1}
