var Hamming  = function(){
}

Hamming.prototype.compute = function(strd1, strd2){
  var distance = 0;
  if(strd1.length === strd2.length && strd2.length !== 0){
    for(var i = 0; i < strd1.length; i++){
      if (strd1.charAt(i) !== strd2.charAt(i)){ distance++; }
    }
  }else{
    throw 'DNA strands must be of equal length.'
  }
  return distance;
}

module.exports = Hamming;
