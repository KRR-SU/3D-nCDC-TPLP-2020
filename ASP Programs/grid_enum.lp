
numobject(N) :- N=#count{K: object(K)}.

hsize(2*N-1) :- numobject(N).
vsize(2*N-1) :- numobject(N).
zsize(2*N-1) :- numobject(N).



#show hsize/1.
#show vsize/1.
#show zsize/1.

