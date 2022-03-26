Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(RandomLib))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(RandomLib))==(Machine(RandomLib));
  Level(Machine(RandomLib))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(RandomLib)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(RandomLib))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(RandomLib))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(RandomLib))==(?);
  List_Includes(Machine(RandomLib))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(RandomLib))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(RandomLib))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(RandomLib))==(?);
  Context_List_Variables(Machine(RandomLib))==(?);
  Abstract_List_Variables(Machine(RandomLib))==(?);
  Local_List_Variables(Machine(RandomLib))==(?);
  List_Variables(Machine(RandomLib))==(?);
  External_List_Variables(Machine(RandomLib))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(RandomLib))==(?);
  Abstract_List_VisibleVariables(Machine(RandomLib))==(?);
  External_List_VisibleVariables(Machine(RandomLib))==(?);
  Expanded_List_VisibleVariables(Machine(RandomLib))==(?);
  List_VisibleVariables(Machine(RandomLib))==(?);
  Internal_List_VisibleVariables(Machine(RandomLib))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(RandomLib))==(btrue);
  Gluing_List_Invariant(Machine(RandomLib))==(btrue);
  Expanded_List_Invariant(Machine(RandomLib))==(btrue);
  Abstract_List_Invariant(Machine(RandomLib))==(btrue);
  Context_List_Invariant(Machine(RandomLib))==(btrue);
  List_Invariant(Machine(RandomLib))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(RandomLib))==(btrue);
  Abstract_List_Assertions(Machine(RandomLib))==(btrue);
  Context_List_Assertions(Machine(RandomLib))==(btrue);
  List_Assertions(Machine(RandomLib))==(random(1,3): 1..2)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(RandomLib))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(RandomLib))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(RandomLib))==(skip);
  Context_List_Initialisation(Machine(RandomLib))==(skip);
  List_Initialisation(Machine(RandomLib))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(RandomLib))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(RandomLib))==(btrue);
  List_Constraints(Machine(RandomLib))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(RandomLib))==(?);
  List_Operations(Machine(RandomLib))==(?)
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
  List_Valuable_Constants(Machine(RandomLib))==(?);
  Inherited_List_Constants(Machine(RandomLib))==(?);
  List_Constants(Machine(RandomLib))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(RandomLib))==(?);
  Context_List_Defered(Machine(RandomLib))==(?);
  Context_List_Sets(Machine(RandomLib))==(?);
  List_Valuable_Sets(Machine(RandomLib))==(?);
  Inherited_List_Enumerated(Machine(RandomLib))==(?);
  Inherited_List_Defered(Machine(RandomLib))==(?);
  Inherited_List_Sets(Machine(RandomLib))==(?);
  List_Enumerated(Machine(RandomLib))==(?);
  List_Defered(Machine(RandomLib))==(?);
  List_Sets(Machine(RandomLib))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(RandomLib))==(?);
  Expanded_List_HiddenConstants(Machine(RandomLib))==(?);
  List_HiddenConstants(Machine(RandomLib))==(random);
  External_List_HiddenConstants(Machine(RandomLib))==(random)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(RandomLib))==(btrue);
  Context_List_Properties(Machine(RandomLib))==(btrue);
  Inherited_List_Properties(Machine(RandomLib))==(btrue);
  List_Properties(Machine(RandomLib))==(random: INTEGER*INTEGER --> INTEGER & random = %(xx,yy).(xx: INTEGER & yy: INTEGER | xx))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(RandomLib)) == (? | ? | ? | ? | ? | ? | ? | ? | RandomLib);
  List_Of_HiddenCst_Ids(Machine(RandomLib)) == (random | ?);
  List_Of_VisibleCst_Ids(Machine(RandomLib)) == (?);
  List_Of_VisibleVar_Ids(Machine(RandomLib)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(RandomLib)) == (?: ?)
END
&
THEORY HiddenConstantsEnvX IS
  HiddenConstants(Machine(RandomLib)) == (Type(random) == HCst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?))))
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
