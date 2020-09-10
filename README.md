
3D-nCDC-ASP SYSTEM:

3D-nCDC-ASP is a framework developed by Izmirlioglu and Erdem (2020) for representing and reasoning about qualitative directional relations in 3-dimensional space. 3D-nCDC-ASP uses 3D-nCDC represents cardinal directions between (dis)connected 3D objects and allows for nonmonotonic reasoning. 3D-nCDC-ASP framework can solve consistency checking problems in 3D-nCDC, integrate commonsense knowledge into reasoning, handle incomplete or uncertain information, infer unknown relations between objects and find source of inconsistency in the given 3D-nCDC network.

Features of 3D-nCDC-ASP System:
- Reason with basic, disjunctive information
- Utilize commonsense knowledge by default 3D-nCDC constraints
- Infer unknown 3D directions between objects
- Explain the reason of inconsistency in the input network. 
- Alternative domains: Connected (Reg) or possibly disconnected (Reg*)

This software uses the ASP programs in the paper for reasoning with 3D-nCDC and Clingo 5.3.0. The grid size is calculated for the problem instance according to Theorem 2: m,n = 2|V|-1




ASP PROGRAMS:

ASP programs in the paper are under the folder "/ASP Programs". All programs are in ASP Core-2 Format.

consistency_3d.lp : Main ASP program in Section 4.3.1 to check consistency of basic 3D-nCDC network
consistency_3d_explain.lp : ASP program in Section 4.6 to explain source of inconsistency in the 3D-nCDC network
disjunctive.lp : Subprogram for disjunctive 3D-nCDC constraints in Section 4.3.2
default.lp : Subprogram for default 3D-nCDC constraints in Section 4.3.3
connected_check.lp : Subprogram for checking connectedness of objects (i.e. whether they belong to Reg) in Section 4.4
inference.lp : Subprogram for inferring unknown 3D-nCDC relations  in Section 4.5





INPUT FORMAT (.lp file)

Objects are enumerated from 1 to |V|

27 tiles are written according to below encoding:

swb: southwest below  sb:south below  seb:southeast below  wb:west below  ob:on below   eb:east below  nwb:northwest below  nb:north below  neb:northeast below

swm: southwest same level  sm:south same level  sem:southeast same level  wm:west same level  om:on same level   em:east same level  nwm:northwest same level  nm:north same level  nem:northeast same level

swa: southwest above  sa:south above  sea:southeast above  wa:west above  oa:on above   ea:east above  nwa:northwest above  na:north above  nea:northeast above



Basic 3D-nCDC constraints:
relation(u,v,r)  atoms for basic CDC constraint
u: target object,  u: reference object,  r: tiles of 3D-nCDC relation (according to above encoding)

Disjunctive 3D-nCDC constraints:
disjrelation(u,v,i,r)  atoms for Disjunctive 3D-nCDC constraint
u: target object,  u: reference object, i:index of disjunct, r: tiles of each 3D-nCDC relation (according to above encoding)

Default 3D-nCDC constraints:
defaultrelation(u,v,r)  atoms for default 3D-nCDC constraint
u: target object,  u: reference object,  r: tiles of 3D-nCDC relation (according to above encoding)




CONSISTENCY CHECKING and REASONING:

1) To check consistency over possibly disconnected domain (Reg*):

./clingo grid_enum.lp consistency_3d.lp  <input lp file>


2) If there are disjunctive 3D-nCDC constraints in the network, add "disjunctive.lp"  to the command in item (3) above

3) In addition, if there are default CDC constraint(s) in the network, add "default.lp"  to the command 

4) To check consistency over connected domain (Reg):
add "connected_check.lp"  to the command above for checking connectedness




INFERENCE:

The user specifies which (u,v) pair of spatial variables to infer. For this, he enters "toinfer(u,v)" atom in the input .lp file.
The user adds "inference.lp"  to the relevant command above. If the network is consistent, ASP output will include "infer(u,v,R)"  atoms to reveal the inferred relation.




EXAMPLE APPLICATIONS:

ASP encoding of the input network for three applications in Section 4.7 of the thesis are under the folder "/Applications".
To find the solution of the example scenarios, run the following commands:

./clingo grid_enum.lp consistency_3d.lp inference.lp marine.lp
./clingo grid_enum.lp consistency_3d_explain.lp disjunctive.lp default.lp connected_check.lp building.lp
./clingo grid_enum.lp consistency_3d.lp disjunctive.lp default.lp connected_check.lp suspect1.lp
./clingo grid_enum.lp consistency_3d.lp disjunctive.lp default.lp connected_check.lp suspect2.lp
./clingo grid_enum.lp consistency_3d_explain.lp disjunctive.lp default.lp connected_check.lp suspect2.lp




EXPERIMENTS:

ASP encoding of the input for experimental evaluations in Section 5.5  of the thesis are under the folder "/Experiments".

marine.lp  : instance M1 in the text
marine_double.lp  : instance M2 in the text
marine_triple.lp  : instance M3 in the text
marine_four.lp  : instance M4 in the text

building.lp  : instance B1 in the text
building_consistent.lp  : instance B1' in the text
building_double.lp  : instance B2 in the text
building_double_consistent.lp  : instance B2' in the text

suspect1.lp  : instance D1 in the text
suspect2.lp  : instance D2 in the text

