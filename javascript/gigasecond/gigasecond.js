var Gigasecond = function(time){
  var this_time = time;
  var self = {}
  self.date = function(){
    return new Date(this_time/1 + 1000000000000);
  };
  return self;
}

module.exports = Gigasecond
