/* *************************************************************
 * 6SENG003C.1 Reasoning About Programs
 * Machine:  Dice
 * Spec:     Coursework 2 Specification
 * Author:   Shiromi Thevarajan
 * Created:  Saturday, 01 January 2022
 ************************************************************ */
 
MACHINE Dice

	SEES
		RandomLib
		
	CONSTANTS
        dice
		
    PROPERTIES
		dice <: NAT1 &
		dice = 1..6

    VARIABLES
        diceValue
		
	INVARIANT
		diceValue : NAT1 &
		diceValue : dice

	INITIALISATION
		diceValue := random ( 1, 7 ) 

	OPERATIONS 
		/** Rolling the dice. **/        
        RollDice =
		BEGIN
			diceValue := random ( 1, 7 )
		END
        
END /* Dice */
