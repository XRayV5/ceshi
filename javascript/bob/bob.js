//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

module.exports = function () {
  'use strict';

  var isSilence, isYelling, isQuestion;

  isSilence = function (message) {
    return !message.match(/\S/);
  };

  isYelling = function (message) {
    return !message.match(/[a-z]/);
  };

  isQuestion = function (message) {
    return !message.match(/[^?]$/);
  };

  return {
    hey: function (message) {
      if (isSilence(message)) { return 'Fine. Be that way!'; }
      if (isYelling(message)) { return 'Whoa, chill out!'; }
      if (isQuestion(message)) { return 'Sure.'; }
      return 'Whatever.';
    }
  };
};
