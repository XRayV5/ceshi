var Year = function(yr) {
  var self = {};
  self.leap_year = yr;
  self.isLeap = function() {
  //
  // YOUR CODE GOES HERE
    if(this.leap_year%4 == 0){
      if((this.leap_year%400 == 0)&&(this.leap_year%100 == 0)){
        return true;
      }else if(this.leap_year%100 == 0){
        return false;
      }else{
        return true;
      }
    }else{
      return false;
    }
  }
  return self
}


module.exports = Year;
