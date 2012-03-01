$ = jQuery

$ ->
  test "No array passed", ->
    equal( karate.chop( 1, null), -1) 
    equal( karate.chop( 1, "xyz"), -1)  
    
  test "Array length 1", -> 
    equal( karate.chop( 1, [0]), -1)
    equal( karate.chop( 1, [1]), 0)
  
  test "Array length > 1 Number contained", -> 
    equal( karate.chop( 0, [0,1,2]), 0)
    equal( karate.chop( 1, [0,1,2]), 1)
    equal( karate.chop( 2, [0,1,2]), 2)
    equal( karate.chop( 2, [0,2,3]), 1)
    equal( karate.chop( 3, [0,1,3]), 2)
    equal( karate.chop( 0, [0,1,2,3]), 0)
    equal( karate.chop( 1, [0,1,2,3]), 1)
    equal( karate.chop( 2, [0,1,2,3]), 2)
    equal( karate.chop( 3, [0,1,2,3]), 3)
    
            
  test "Array length > 1 Number not contained", -> 
    equal( karate.chop( 0, [1,2,3]), -1)
    equal( karate.chop( 4, [1,2,3]), -1)
    equal( karate.chop( 0, [1,3,4]), -1)
    equal( karate.chop( 4, [0,1,3]), -1)
    equal( karate.chop( 0, [1,2,3,4]), -1)
    equal( karate.chop( 5, [1,2,3,4]), -1)
    

