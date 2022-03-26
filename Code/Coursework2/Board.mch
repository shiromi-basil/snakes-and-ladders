/* *************************************************************
 * 6SENG003C.1 Reasoning About Programs
 * Machine:  Board
 * Spec:     Coursework 2 Specification
 * Author:   Shiromi Thevarajan
 * Created:  Saturday, 01 January 2022
 ************************************************************ */
 
MACHINE Board

    CONSTANTS
		board,
		snakes,
		ladders,
		normalSquares,
		startSquare,
		finishSquare

    PROPERTIES
		// Board
		board <: NAT1 &
		board = 1..100 &
		
		// Snakes
        snakes : board >+> board & // head |-> tail
		snakes = { 31 |-> 4, 16 |-> 13, 47 |-> 25, 66 |-> 52, 63 |-> 60, 97 |-> 75 } &
        card ( snakes ) = 6 &
        dom ( snakes ) /\ ran ( snakes ) = {} &
		
		// Ladders
		ladders : board >+> board & // bottom |-> top
		ladders = { 3 |-> 39, 10 |-> 12, 27 |-> 53, 56 |-> 84, 61 |-> 99, 74 |-> 90 } &
        card ( ladders ) = 6 &
        dom ( ladders ) /\ ran ( ladders ) = {} &
        dom ( ladders ) <: 1..90 & // The bottom of a ladder cannot be on the top row

        // Normal Squares
		normalSquares <: board &
		normalSquares /\ dom ( snakes ) = {} &
		normalSquares /\ ran ( snakes ) = {} &
		normalSquares /\ dom ( ladders ) = {} &
		normalSquares /\ ran ( ladders ) = {} &
		normalSquares /\ dom ( snakes ) /\ ran ( snakes ) /\ dom ( ladders ) /\ ran ( ladders ) = {} &
		normalSquares \/ dom ( snakes ) \/ ran ( snakes ) \/ dom ( ladders ) \/ ran ( ladders ) = board &
		
		// Start Square
		startSquare : board &
		startSquare : normalSquares &
		startSquare = 1 &
		
		// Finish Square
		finishSquare : board &
		finishSquare : normalSquares &
		finishSquare = 100
        
END /* Board */
