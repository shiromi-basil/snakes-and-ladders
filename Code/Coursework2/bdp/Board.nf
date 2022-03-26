﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Board))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Board))==(Machine(Board));
  Level(Machine(Board))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Board)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Board))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Board))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Board))==(?);
  List_Includes(Machine(Board))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Board))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Board))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Board))==(?);
  Context_List_Variables(Machine(Board))==(?);
  Abstract_List_Variables(Machine(Board))==(?);
  Local_List_Variables(Machine(Board))==(?);
  List_Variables(Machine(Board))==(?);
  External_List_Variables(Machine(Board))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Board))==(?);
  Abstract_List_VisibleVariables(Machine(Board))==(?);
  External_List_VisibleVariables(Machine(Board))==(?);
  Expanded_List_VisibleVariables(Machine(Board))==(?);
  List_VisibleVariables(Machine(Board))==(?);
  Internal_List_VisibleVariables(Machine(Board))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Board))==(btrue);
  Gluing_List_Invariant(Machine(Board))==(btrue);
  Expanded_List_Invariant(Machine(Board))==(btrue);
  Abstract_List_Invariant(Machine(Board))==(btrue);
  Context_List_Invariant(Machine(Board))==(btrue);
  List_Invariant(Machine(Board))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Board))==(btrue);
  Abstract_List_Assertions(Machine(Board))==(btrue);
  Context_List_Assertions(Machine(Board))==(btrue);
  List_Assertions(Machine(Board))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Board))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Board))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Board))==(skip);
  Context_List_Initialisation(Machine(Board))==(skip);
  List_Initialisation(Machine(Board))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Board))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Board))==(btrue);
  List_Constraints(Machine(Board))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Board))==(?);
  List_Operations(Machine(Board))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Board))==(board,snakes,ladders,normalSquares,startSquare,finishSquare);
  Inherited_List_Constants(Machine(Board))==(?);
  List_Constants(Machine(Board))==(board,snakes,ladders,normalSquares,startSquare,finishSquare)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Board))==(?);
  Context_List_Defered(Machine(Board))==(?);
  Context_List_Sets(Machine(Board))==(?);
  List_Valuable_Sets(Machine(Board))==(?);
  Inherited_List_Enumerated(Machine(Board))==(?);
  Inherited_List_Defered(Machine(Board))==(?);
  Inherited_List_Sets(Machine(Board))==(?);
  List_Enumerated(Machine(Board))==(?);
  List_Defered(Machine(Board))==(?);
  List_Sets(Machine(Board))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Board))==(?);
  Expanded_List_HiddenConstants(Machine(Board))==(?);
  List_HiddenConstants(Machine(Board))==(?);
  External_List_HiddenConstants(Machine(Board))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Board))==(btrue);
  Context_List_Properties(Machine(Board))==(btrue);
  Inherited_List_Properties(Machine(Board))==(btrue);
  List_Properties(Machine(Board))==(board <: NAT1 & board = 1..100 & snakes: board >+> board & snakes = {31|->4,16|->13,47|->25,66|->52,63|->60,97|->75} & card(snakes) = 6 & dom(snakes)/\ran(snakes) = {} & ladders: board >+> board & ladders = {3|->39,10|->12,27|->53,56|->84,61|->99,74|->90} & card(ladders) = 6 & dom(ladders)/\ran(ladders) = {} & dom(ladders) <: 1..90 & normalSquares <: board & normalSquares/\dom(snakes) = {} & normalSquares/\ran(snakes) = {} & normalSquares/\dom(ladders) = {} & normalSquares/\ran(ladders) = {} & normalSquares/\dom(snakes)/\ran(snakes)/\dom(ladders)/\ran(ladders) = {} & normalSquares\/dom(snakes)\/ran(snakes)\/dom(ladders)\/ran(ladders) = board & startSquare: board & startSquare: normalSquares & startSquare = 1 & finishSquare: board & finishSquare: normalSquares & finishSquare = 100)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Board)) == (board,snakes,ladders,normalSquares,startSquare,finishSquare | ? | ? | ? | ? | ? | ? | ? | Board);
  List_Of_HiddenCst_Ids(Machine(Board)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Board)) == (board,snakes,ladders,normalSquares,startSquare,finishSquare);
  List_Of_VisibleVar_Ids(Machine(Board)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Board)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Board)) == (Type(board) == Cst(SetOf(btype(INTEGER,"[board","]board")));Type(snakes) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(ladders) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(normalSquares) == Cst(SetOf(btype(INTEGER,"[normalSquares","]normalSquares")));Type(startSquare) == Cst(btype(INTEGER,?,?));Type(finishSquare) == Cst(btype(INTEGER,?,?)))
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
