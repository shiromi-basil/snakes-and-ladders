/* *************************************************************
 * 6SENG003C.1 Reasoning About Programs
 * Machine:  RandomLib
 * Spec:     Library for generating random numbers.
 * Author:   Shiromi Thevarajan
 * Created:  Saturday, 01 January 2022
 ************************************************************ */
 
MACHINE RandomLib

    ABSTRACT_CONSTANTS
        random // Generates a random number in the given range
    
    DEFINITIONS 
        EXTERNAL_FUNCTION_RANDOM == INTEGER * INTEGER --> INTEGER ;
        RANDOM ( x,y ) == x
    
    PROPERTIES
        random : INTEGER * INTEGER --> INTEGER &
        random = % ( xx, yy ) . ( xx:INTEGER & yy:INTEGER | RANDOM ( xx, yy ) )
    
    ASSERTIONS
        random ( 1, 3 ) : 1..2
        
END /* RandomLib */
