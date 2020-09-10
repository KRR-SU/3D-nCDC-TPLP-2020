

% Spatial objects are connected objects in 3D space
% 1:entrance   2:electric panel   3:system room   4:heating unit   5:director office   6:secretary

object(1..12).

% 27 tiles of 3D-nCDC
alltiles(swm).  alltiles(sm).  alltiles(sem).  alltiles(wm).  alltiles(om). alltiles(em).  alltiles(nwm).  alltiles(nm).  alltiles(nem).
alltiles(swb).  alltiles(sb).  alltiles(seb).  alltiles(wb).  alltiles(ob). alltiles(eb).  alltiles(nwb).  alltiles(nb).  alltiles(neb).
alltiles(swa).  alltiles(sa).  alltiles(sea).  alltiles(wa).  alltiles(oa). alltiles(ea).  alltiles(nwa).  alltiles(na).  alltiles(nea).


% Define network of constraints in 3D-nCDC

disjrelation(2,1,1,nm).  disjrelation(2,1,2,nb).
disjrelation(3,2,1,om).  disjrelation(3,2,2,ob).  disjrelation(3,2,3,oa).
relation(5,1,oa).
relation(3,5,wm).


% Commonsense Knowledge

defaultrelation(4,1,swb).
defaultrelation(6,5,em).


% Replicate

disjrelation(8,7,1,nm).  disjrelation(8,7,2,nb).
disjrelation(9,8,1,om).  disjrelation(9,8,2,ob).  disjrelation(9,8,3,oa).
relation(11,7,oa).
relation(9,11,wm).


%  Commonsense Knowledge

defaultrelation(10,7,swb).
defaultrelation(12,11,em).


% Constraints which are mandatory due to regulation

mandatory(2,1).
mandatory(8,7).

