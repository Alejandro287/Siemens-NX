O89 (do not remove - important for parameter handling)

IF[0NE#19]GOTO15 (if no spindle speed has been programmed use the current speed)
#19=#4119
N15
IF[0NE#9]GOTO16 (if no feed has been programmed use the current feed)
#9=#4109
N16

IF[17EQ#4016]GOTO17
IF[18EQ#4016]GOTO18
IF[19EQ#4016]GOTO19
M99

N17
G0 Z[#18]
G1 Z[#26]  M3 S[#19]
G4 P[#16]
IF[90EQ#4003] GOTO 1790
IF[91EQ#4003] GOTO 1791
N1790
G1 Z[#18] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 Z[#27]
G[#99]
GOTO 999
N1791
G1 Z[-#26] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 Z[#27]
G[#99]
GOTO 999

N18
G0 Y[#18]
G1 Y[#26]  M3 S[#19]
G4 P[#16]
IF[90EQ#4003] GOTO 1890
IF[91EQ#4003] GOTO 1891
N1890
G1 Y[#18] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 Y[#27]
G[#99]
GOTO 999
N1891
G1 Y[-#26] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 Y[#27]
G[#99]
GOTO 999

N19
G0 X[#18]
G1 X[#26]  M3 S[#19]
G4 P[#16]
IF[90EQ#4003] GOTO 1990
IF[91EQ#4003] GOTO 1991
N1990
G1 X[#18] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 X[#27]
G[#99]
GOTO 999
N1991
G1 X[-#26] 
IF[98NE#4010] GOTO 999
#99=#4003
G0 G90 X[#27]
G[#99]
GOTO 999


N999
M99



