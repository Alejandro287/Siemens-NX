G0 G90 G49 M5

(Set the tool change position values in metric X,Y,Z)
#100001=0.000
#100002=0.000
#100003=0.000

IF[71EQ#4006] GOTO 10
IF[21EQ#4006] GOTO 10
   #100001=#100001/25.4
   #100002=#100002/25.4
   #100003=#100003/25.4
N10

(N15 G0 G53 X[#100001] Y[#100002])
N20 G0 G53 Z[#100003]

##LANGUAGE AC
  INT nToolID;
  nToolID = getVariable("#4120");

  IF (nToolID > 0);
    generateTool (getToolNameByNumber(nToolID), "S");
  ENDIF;

  IF (exist (getCurrentTool ("S")));
    visibility (     getCurrentTool ("S"), OFF, TRUE);
    collision  (OFF, getCurrentTool ("S"));
    release    (     getCurrentTool ("S"));
  ENDIF;

  IF (exist (getNextTool ("S")));
    grasp      (    getNextTool ("S"), getSpindleObject ("S"));
    position   (    getNextTool ("S"), 0, 0, 0, 0, 0, 0);
    visibility (    getNextTool ("S"), ON, TRUE);
    collision  (ON, getNextTool ("S"), 2, -0.01);
    activateNextTool ("S");
  ENDIF;
##LANGUAGE NATIVE

G43 H1
M99
