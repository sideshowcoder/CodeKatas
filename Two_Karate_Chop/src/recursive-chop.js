(function() {
  var chop;

  if (window.karate == null) window.karate = {};

  karate.chop = chop = function(i, array, offset) {
    var p, pidx;
    if (!(array != null) || !(array instanceof Array)) return -1;
    if (offset == null) offset = 0;
    if (array.length === 1) {
      if (array[0] === i) {
        return offset;
      } else {
        return -1;
      }
    } else {
      pidx = Math.floor(array.length / 2);
      p = array[pidx];
      if (p > i) {
        return chop(i, array.slice(0, pidx), offset);
      } else {
        return chop(i, array.slice(pidx, array.length), offset + pidx);
      }
    }
  };

}).call(this);
