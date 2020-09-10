

% Spatial objects in Digital Forensics case study  (Connected objects in 3D space)
% 1:Body  2:Table  3:Chair  4:Teapoy  5:Drawer  6:Sofa  7:Suitcase  8:Hanger  9:Coat  10:Hat 
% 11:Muffler  12:Phonebook  13:Knife  14:Drug  15:Rope  16:Ballon  17:Whistle 18:bed 19:phone  20:umbrella

object(1..20).

% 27 tiles of 3D-nCDC
alltiles(swm).  alltiles(sm).  alltiles(sem).  alltiles(wm).  alltiles(om). alltiles(em).  alltiles(nwm).  alltiles(nm).  alltiles(nem).
alltiles(swb).  alltiles(sb).  alltiles(seb).  alltiles(wb).  alltiles(ob). alltiles(eb).  alltiles(nwb).  alltiles(nb).  alltiles(neb).
alltiles(swa).  alltiles(sa).  alltiles(sea).  alltiles(wa).  alltiles(oa). alltiles(ea).  alltiles(nwa).  alltiles(na).  alltiles(nea).


% Digital Data

relation(1,2,sm).  relation(1,2,sem).
relation(1,4,nm).  relation(1,4,nem).
relation(19,2,oa).
relation(6,18,sem).
relation(4,6,em). 
relation(9,8,om).


% Commonsense Knowledge:

defaultrelation(19,2,oa).
defaultrelation(20,8,om).
defaultrelation(9,8,om).


% Spatial Constraints in Suspect 2 statement

relation(7,2,sm).
relation(14,4,oa).
relation(13,1,em).
relation(13,19,sb). 

