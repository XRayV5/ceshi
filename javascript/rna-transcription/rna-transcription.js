var DnaTranscriber = function(){}

var DNA_TO_RNA = {
  'G' : 'C',
  'C' : 'G',
  'T' : 'A',
  'A' : 'U'
}

DnaTranscriber.prototype.toRna = function(strd){

  return strd.split('').map(function(e){
    return DNA_TO_RNA[e]}).join('');
}

module.exports = DnaTranscriber;
