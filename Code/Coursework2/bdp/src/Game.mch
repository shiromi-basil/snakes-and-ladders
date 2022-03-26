/* *************************************************************
 * 6SENG003C.1 Reasoning About Programs
 * Machine:  Game
 * Spec:     Coursework 2 Specification
 * Author:   Shiromi Thevarajan
 * Created:  Saturday, 01 January 2022
 ************************************************************ */

MACHINE Game








    SEES
                Board

    INCLUDES
        Dice

        SETS
        MOVEMENT_REPORT = { WentDownASnake , WentUpALadder , NoMovementNewPositionGreaterThanHundred , GameWon , GameWonRestartTheGame , LandedOnANormalSquare , StartingNewGame }

        ABSTRACT_VARIABLES
                currentPosition ,
                noOfSnakesEncountered ,
                noOfLaddersEncountered ,
                noOfTurnsTaken ,
                visitedSquares

        INVARIANT
                currentPosition : NAT1 &
                currentPosition : board &
                noOfSnakesEncountered : NAT &
                noOfLaddersEncountered : NAT &
                noOfTurnsTaken : NAT &
                visitedSquares : seq ( board )

        INITIALISATION
        // NOTE: Assuming that this game starts in the first square with 0 turns 
        // (i.e. before the first dice roll).
                currentPosition := startSquare ||
                noOfSnakesEncountered := 0 ||
                noOfLaddersEncountered := 0 ||
                noOfTurnsTaken := 0 ||
                visitedSquares := [ startSquare ]

        OPERATIONS
                /** Moves the current position of the game. **/
                report , square <-- Move =
                PRE
            report : MOVEMENT_REPORT
                THEN
            // Calling the operation to roll the dice from the 'Dice' machine
            rollDice ||
                        IF
                // Checking if the new position is a head of a snake
                ( ( ( currentPosition + diceValue ) : dom ( snakes ) ) )
            THEN
                // Moving the current position to the tail of the snake
                currentPosition := snakes ( ( currentPosition + diceValue ) ) ||
                noOfSnakesEncountered := succ ( noOfSnakesEncountered ) ||
                noOfTurnsTaken := succ ( noOfTurnsTaken ) ||
                visitedSquares := visitedSquares <- ( ( currentPosition + diceValue ) ) <- ( snakes ( ( currentPosition + diceValue ) ) ) ||
                report := WentDownASnake ||
                square := snakes ( ( currentPosition + diceValue ) )
            ELSIF
                // Checking if the new position is a bottom of a ladder
                ( ( ( currentPosition + diceValue ) : dom ( ladders ) ) )
            THEN
                // Moving the current position to the top of the ladder
                currentPosition := ladders ( ( currentPosition + diceValue ) ) ||
                noOfLaddersEncountered := succ ( noOfLaddersEncountered ) ||
                noOfTurnsTaken := succ ( noOfTurnsTaken ) ||
                visitedSquares := visitedSquares <- ( ( currentPosition + diceValue ) ) <- ( ladders ( ( currentPosition + diceValue ) ) ) ||
                report := WentUpALadder ||
                square := ladders ( ( currentPosition + diceValue ) )
            ELSIF
                //Checking if the new position is greater than 100
                ( ( ( currentPosition + diceValue ) > finishSquare ) )
            THEN
                IF
                    // Checking if the game has already been won
                    ( ( currentPosition = finishSquare ) )
                THEN
                    // Outputs message to restart the game
                    report := GameWonRestartTheGame ||
                    square := currentPosition
                ELSE
                    // Stays in the same position
                    currentPosition := ( currentPosition + diceValue ) - diceValue ||
                    report := NoMovementNewPositionGreaterThanHundred ||
                    square := currentPosition
                END
            ELSIF
                // Checking if the new position if the last square
                ( ( ( currentPosition + diceValue ) = finishSquare ) )
            THEN
                currentPosition := ( currentPosition + diceValue ) ||
                noOfTurnsTaken := succ ( noOfTurnsTaken ) ||
                visitedSquares := visitedSquares <- ( ( currentPosition + diceValue ) ) ||
                report := GameWon ||
                square := ( currentPosition + diceValue )
            ELSE
                // Moving to a normal square
                currentPosition := ( currentPosition + diceValue ) ||
                noOfTurnsTaken := succ ( noOfTurnsTaken ) ||
                visitedSquares := visitedSquares <- ( ( currentPosition + diceValue ) ) ||
                report := LandedOnANormalSquare ||
                square := ( currentPosition + diceValue )
            END
                END ;

                /** Reports the current statistics of the game. **/
                position , snakesEncountered , laddersEncountered , turnsTaken <-- GameStatistics =
                BEGIN
                        position := currentPosition ||
                        snakesEncountered := noOfSnakesEncountered ||
                        laddersEncountered := noOfLaddersEncountered ||
                        turnsTaken := noOfTurnsTaken
                END ;

                /** Reports the list of squares that have been visited. **/
                squares <-- VisitedSquares =
                BEGIN
                        squares := visitedSquares
                END ;

                /** Starts or re-stars the game. **/
                report <-- NewGame =
                PRE
                        report : MOVEMENT_REPORT
                THEN
            // NOTE: Assuming that this game starts in the first square with 0 turns 
            // (i.e. before the first dice roll).
            rollDice || // Resetting the dice value
                        currentPosition := startSquare ||
                        noOfSnakesEncountered := 0 ||
                        noOfLaddersEncountered := 0 ||
                        noOfTurnsTaken := 0 ||
                        visitedSquares := [ startSquare ] ||
            report := StartingNewGame
                END

END /* Game */
