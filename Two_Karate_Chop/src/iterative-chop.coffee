window.karate ?= {}

karate.chop = chop = (i , array) ->
  return -1 unless array? and array instanceof Array
  offset = 0
  loop
    pidx = Math.floor array.length / 2
    p = array[pidx]
    # break on last element
    if array.length is 1
      if p is i then return offset else return -1
    # cases for p
    if p is i
      return offset + pidx # ok so we hit p...
    if p < i
      offset += pidx 
      array = array[pidx...array.length] # chop of the front of the array
    else
      array = array[0...pidx] # chop of the back of the array
      