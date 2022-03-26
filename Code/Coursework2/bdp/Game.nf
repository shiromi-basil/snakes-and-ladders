Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Game))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Game))==(Machine(Game));
  Level(Machine(Game))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Game)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Game))==(Board)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Game))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Game))==(Dice);
  List_Includes(Machine(Game))==(Dice)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Game))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Game))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Game))==(?);
  Context_List_Variables(Machine(Game))==(?);
  Abstract_List_Variables(Machine(Game))==(?);
  Local_List_Variables(Machine(Game))==(visitedSquares,noOfTurnsTaken,noOfLaddersEncountered,noOfSnakesEncountered,currentPosition);
  List_Variables(Machine(Game))==(visitedSquares,noOfTurnsTaken,noOfLaddersEncountered,noOfSnakesEncountered,currentPosition,diceValue);
  External_List_Variables(Machine(Game))==(visitedSquares,noOfTurnsTaken,noOfLaddersEncountered,noOfSnakesEncountered,currentPosition,diceValue)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Game))==(?);
  Abstract_List_VisibleVariables(Machine(Game))==(?);
  External_List_VisibleVariables(Machine(Game))==(?);
  Expanded_List_VisibleVariables(Machine(Game))==(?);
  List_VisibleVariables(Machine(Game))==(?);
  Internal_List_VisibleVariables(Machine(Game))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Game))==(btrue);
  Gluing_List_Invariant(Machine(Game))==(btrue);
  Abstract_List_Invariant(Machine(Game))==(btrue);
  Expanded_List_Invariant(Machine(Game))==(diceValue: NAT1 & diceValue: dice);
  Context_List_Invariant(Machine(Game))==(btrue);
  List_Invariant(Machine(Game))==(currentPosition: NAT1 & currentPosition: board & noOfSnakesEncountered: NAT & noOfLaddersEncountered: NAT & noOfTurnsTaken: NAT & visitedSquares: seq(board))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Game))==(btrue);
  Expanded_List_Assertions(Machine(Game))==(btrue);
  Context_List_Assertions(Machine(Game))==(btrue);
  List_Assertions(Machine(Game))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Game))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Game))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Game))==(diceValue:=random(1,7);currentPosition,noOfSnakesEncountered,noOfLaddersEncountered,noOfTurnsTaken,visitedSquares:=startSquare,0,0,0,[startSquare]);
  Context_List_Initialisation(Machine(Game))==(skip);
  List_Initialisation(Machine(Game))==(currentPosition:=startSquare || noOfSnakesEncountered:=0 || noOfLaddersEncountered:=0 || noOfTurnsTaken:=0 || visitedSquares:=[startSquare])
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Game))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Game),Machine(Dice))==(?);
  List_Instanciated_Parameters(Machine(Game),Machine(Board))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Game),Machine(Dice))==(btrue);
  List_Context_Constraints(Machine(Game))==(btrue);
  List_Constraints(Machine(Game))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Game))==(Move,GameStatistics,VisitedSquares,NewGame);
  List_Operations(Machine(Game))==(Move,GameStatistics,VisitedSquares,NewGame)
END
&
THEORY ListInputX IS
  List_Input(Machine(Game),Move)==(?);
  List_Input(Machine(Game),GameStatistics)==(?);
  List_Input(Machine(Game),VisitedSquares)==(?);
  List_Input(Machine(Game),NewGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Game),Move)==(report,square);
  List_Output(Machine(Game),GameStatistics)==(position,snakesEncountered,laddersEncountered,turnsTaken);
  List_Output(Machine(Game),VisitedSquares)==(squares);
  List_Output(Machine(Game),NewGame)==(report)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Game),Move)==(report,square <-- Move);
  List_Header(Machine(Game),GameStatistics)==(position,snakesEncountered,laddersEncountered,turnsTaken <-- GameStatistics);
  List_Header(Machine(Game),VisitedSquares)==(squares <-- VisitedSquares);
  List_Header(Machine(Game),NewGame)==(report <-- NewGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Game),Move)==(report: MOVEMENT_REPORT);
  List_Precondition(Machine(Game),GameStatistics)==(btrue);
  List_Precondition(Machine(Game),VisitedSquares)==(btrue);
  List_Precondition(Machine(Game),NewGame)==(report: MOVEMENT_REPORT)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Game),NewGame)==(report: MOVEMENT_REPORT & btrue | diceValue:=random(1,7) || currentPosition:=startSquare || noOfSnakesEncountered:=0 || noOfLaddersEncountered:=0 || noOfTurnsTaken:=0 || visitedSquares:=[startSquare] || report:=StartingNewGame);
  Expanded_List_Substitution(Machine(Game),VisitedSquares)==(btrue | squares:=visitedSquares);
  Expanded_List_Substitution(Machine(Game),GameStatistics)==(btrue | position,snakesEncountered,laddersEncountered,turnsTaken:=currentPosition,noOfSnakesEncountered,noOfLaddersEncountered,noOfTurnsTaken);
  Expanded_List_Substitution(Machine(Game),Move)==(report: MOVEMENT_REPORT & btrue | diceValue:=random(1,7) || (currentPosition+diceValue: dom(snakes) ==> currentPosition,noOfSnakesEncountered,noOfTurnsTaken,visitedSquares,report,square:=snakes(currentPosition+diceValue),succ(noOfSnakesEncountered),succ(noOfTurnsTaken),visitedSquares<-currentPosition+diceValue<-snakes(currentPosition+diceValue),WentDownASnake,snakes(currentPosition+diceValue) [] not(currentPosition+diceValue: dom(snakes)) ==> (currentPosition+diceValue: dom(ladders) ==> currentPosition,noOfLaddersEncountered,noOfTurnsTaken,visitedSquares,report,square:=ladders(currentPosition+diceValue),succ(noOfLaddersEncountered),succ(noOfTurnsTaken),visitedSquares<-currentPosition+diceValue<-ladders(currentPosition+diceValue),WentUpALadder,ladders(currentPosition+diceValue) [] not(currentPosition+diceValue: dom(ladders)) ==> (currentPosition+diceValue>finishSquare ==> (currentPosition = finishSquare ==> report,square:=GameWonRestartTheGame,currentPosition [] not(currentPosition = finishSquare) ==> currentPosition,report,square:=currentPosition+diceValue-diceValue,NoMovementNewPositionGreaterThanHundred,currentPosition) [] not(currentPosition+diceValue>finishSquare) ==> (currentPosition+diceValue = finishSquare ==> currentPosition,noOfTurnsTaken,visitedSquares,report,square:=currentPosition+diceValue,succ(noOfTurnsTaken),visitedSquares<-currentPosition+diceValue,GameWon,currentPosition+diceValue [] not(currentPosition+diceValue = finishSquare) ==> currentPosition,noOfTurnsTaken,visitedSquares,report,square:=currentPosition+diceValue,succ(noOfTurnsTaken),visitedSquares<-currentPosition+diceValue,LandedOnANormalSquare,currentPosition+diceValue)))));
  List_Substitution(Machine(Game),Move)==(rollDice || IF currentPosition+diceValue: dom(snakes) THEN currentPosition:=snakes(currentPosition+diceValue) || noOfSnakesEncountered:=succ(noOfSnakesEncountered) || noOfTurnsTaken:=succ(noOfTurnsTaken) || visitedSquares:=visitedSquares<-currentPosition+diceValue<-snakes(currentPosition+diceValue) || report:=WentDownASnake || square:=snakes(currentPosition+diceValue) ELSIF currentPosition+diceValue: dom(ladders) THEN currentPosition:=ladders(currentPosition+diceValue) || noOfLaddersEncountered:=succ(noOfLaddersEncountered) || noOfTurnsTaken:=succ(noOfTurnsTaken) || visitedSquares:=visitedSquares<-currentPosition+diceValue<-ladders(currentPosition+diceValue) || report:=WentUpALadder || square:=ladders(currentPosition+diceValue) ELSIF currentPosition+diceValue>finishSquare THEN IF currentPosition = finishSquare THEN report:=GameWonRestartTheGame || square:=currentPosition ELSE currentPosition:=currentPosition+diceValue-diceValue || report:=NoMovementNewPositionGreaterThanHundred || square:=currentPosition END ELSIF currentPosition+diceValue = finishSquare THEN currentPosition:=currentPosition+diceValue || noOfTurnsTaken:=succ(noOfTurnsTaken) || visitedSquares:=visitedSquares<-currentPosition+diceValue || report:=GameWon || square:=currentPosition+diceValue ELSE currentPosition:=currentPosition+diceValue || noOfTurnsTaken:=succ(noOfTurnsTaken) || visitedSquares:=visitedSquares<-currentPosition+diceValue || report:=LandedOnANormalSquare || square:=currentPosition+diceValue END);
  List_Substitution(Machine(Game),GameStatistics)==(position:=currentPosition || snakesEncountered:=noOfSnakesEncountered || laddersEncountered:=noOfLaddersEncountered || turnsTaken:=noOfTurnsTaken);
  List_Substitution(Machine(Game),VisitedSquares)==(squares:=visitedSquares);
  List_Substitution(Machine(Game),NewGame)==(rollDice || currentPosition:=startSquare || noOfSnakesEncountered:=0 || noOfLaddersEncountered:=0 || noOfTurnsTaken:=0 || visitedSquares:=[startSquare] || report:=StartingNewGame)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Game))==(dice);
  Inherited_List_Constants(Machine(Game))==(dice);
  List_Constants(Machine(Game))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Game),MOVEMENT_REPORT)==({WentDownASnake,WentUpALadder,NoMovementNewPositionGreaterThanHundred,GameWon,GameWonRestartTheGame,LandedOnANormalSquare,StartingNewGame});
  Context_List_Enumerated(Machine(Game))==(?);
  Context_List_Defered(Machine(Game))==(?);
  Context_List_Sets(Machine(Game))==(?);
  List_Valuable_Sets(Machine(Game))==(?);
  Inherited_List_Enumerated(Machine(Game))==(?);
  Inherited_List_Defered(Machine(Game))==(?);
  Inherited_List_Sets(Machine(Game))==(?);
  List_Enumerated(Machine(Game))==(MOVEMENT_REPORT);
  List_Defered(Machine(Game))==(?);
  List_Sets(Machine(Game))==(MOVEMENT_REPORT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Game))==(?);
  Expanded_List_HiddenConstants(Machine(Game))==(?);
  List_HiddenConstants(Machine(Game))==(?);
  External_List_HiddenConstants(Machine(Game))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Game))==(btrue);
  Context_List_Properties(Machine(Game))==(board <: NAT1 & board = 1..100 & snakes: board >+> board & snakes = {31|->4,16|->13,47|->25,66|->52,63|->60,97|->75} & card(snakes) = 6 & dom(snakes)/\ran(snakes) = {} & ladders: board >+> board & ladders = {3|->39,10|->12,27|->53,56|->84,61|->99,74|->90} & card(ladders) = 6 & dom(ladders)/\ran(ladders) = {} & dom(ladders) <: 1..90 & normalSquares <: board & normalSquares/\dom(snakes) = {} & normalSquares/\ran(snakes) = {} & normalSquares/\dom(ladders) = {} & normalSquares/\ran(ladders) = {} & normalSquares/\dom(snakes)/\ran(snakes)/\dom(ladders)/\ran(ladders) = {} & normalSquares\/dom(snakes)\/ran(snakes)\/dom(ladders)\/ran(ladders) = board & startSquare: board & startSquare: normalSquares & startSquare = 1 & finishSquare: board & finishSquare: normalSquares & finishSquare = 100);
  Inherited_List_Properties(Machine(Game))==(dice <: NAT1 & dice = 1..6);
  List_Properties(Machine(Game))==(MOVEMENT_REPORT: FIN(INTEGER) & not(MOVEMENT_REPORT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Game),Machine(Board))==(?);
  Seen_Context_List_Enumerated(Machine(Game))==(?);
  Seen_Context_List_Invariant(Machine(Game))==(btrue);
  Seen_Context_List_Assertions(Machine(Game))==(btrue);
  Seen_Context_List_Properties(Machine(Game))==(btrue);
  Seen_List_Constraints(Machine(Game))==(btrue);
  Seen_List_Operations(Machine(Game),Machine(Board))==(?);
  Seen_Expanded_List_Invariant(Machine(Game),Machine(Board))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Game),Move)==(?);
  List_ANY_Var(Machine(Game),GameStatistics)==(?);
  List_ANY_Var(Machine(Game),VisitedSquares)==(?);
  List_ANY_Var(Machine(Game),NewGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Game)) == (MOVEMENT_REPORT,WentDownASnake,WentUpALadder,NoMovementNewPositionGreaterThanHundred,GameWon,GameWonRestartTheGame,LandedOnANormalSquare,StartingNewGame | dice | visitedSquares,noOfTurnsTaken,noOfLaddersEncountered,noOfSnakesEncountered,currentPosition | diceValue | Move,GameStatistics,VisitedSquares,NewGame | ? | seen(Machine(Board)),included(Machine(Dice)) | ? | Game);
  List_Of_HiddenCst_Ids(Machine(Game)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Game)) == (dice);
  List_Of_VisibleVar_Ids(Machine(Game)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Game)) == (seen(Machine(RandomLib)): (? | ? | ? | ? | ? | ? | random | ? | ?));
  List_Of_Ids(Machine(Dice)) == (dice | ? | diceValue | ? | rollDice | ? | seen(Machine(RandomLib)) | ? | Dice);
  List_Of_HiddenCst_Ids(Machine(Dice)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Dice)) == (dice);
  List_Of_VisibleVar_Ids(Machine(Dice)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Dice)) == (?: ?);
  List_Of_Ids(Machine(RandomLib)) == (? | ? | ? | ? | ? | ? | ? | ? | RandomLib);
  List_Of_HiddenCst_Ids(Machine(RandomLib)) == (random | ?);
  List_Of_VisibleCst_Ids(Machine(RandomLib)) == (?);
  List_Of_VisibleVar_Ids(Machine(RandomLib)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(RandomLib)) == (?: ?);
  List_Of_Ids(Machine(Board)) == (board,snakes,ladders,normalSquares,startSquare,finishSquare | ? | ? | ? | ? | ? | ? | ? | Board);
  List_Of_HiddenCst_Ids(Machine(Board)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Board)) == (board,snakes,ladders,normalSquares,startSquare,finishSquare);
  List_Of_VisibleVar_Ids(Machine(Board)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Board)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Game)) == (Type(MOVEMENT_REPORT) == Cst(SetOf(etype(MOVEMENT_REPORT,0,6))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Game)) == (Type(dice) == Cst(SetOf(btype(INTEGER,"[dice","]dice")));Type(WentDownASnake) == Cst(etype(MOVEMENT_REPORT,0,6));Type(WentUpALadder) == Cst(etype(MOVEMENT_REPORT,0,6));Type(NoMovementNewPositionGreaterThanHundred) == Cst(etype(MOVEMENT_REPORT,0,6));Type(GameWon) == Cst(etype(MOVEMENT_REPORT,0,6));Type(GameWonRestartTheGame) == Cst(etype(MOVEMENT_REPORT,0,6));Type(LandedOnANormalSquare) == Cst(etype(MOVEMENT_REPORT,0,6));Type(StartingNewGame) == Cst(etype(MOVEMENT_REPORT,0,6)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Game)) == (Type(diceValue) == Mvl(btype(INTEGER,?,?));Type(visitedSquares) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(noOfTurnsTaken) == Mvl(btype(INTEGER,?,?));Type(noOfLaddersEncountered) == Mvl(btype(INTEGER,?,?));Type(noOfSnakesEncountered) == Mvl(btype(INTEGER,?,?));Type(currentPosition) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Game)) == (Type(NewGame) == Cst(etype(MOVEMENT_REPORT,?,?),No_type);Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(Move) == Cst(etype(MOVEMENT_REPORT,?,?)*btype(INTEGER,?,?),No_type));
  Observers(Machine(Game)) == (Type(VisitedSquares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)),No_type);Type(GameStatistics) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
