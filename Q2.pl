male(ram).
male(rahim).
male(shyam).
male(ravi).
male(raj).
male(raju).
male(harsh).
male(dhruv).

female(gita).
female(anita).
female(smita).
female(sita).
female(sudha).
female(anu).

child(rahim,ram).  % means ram is a child of rahim
child(rahim,gita).
child(raj,shyam).
child(raj,anita).
child(smita,anita).
child(smita,ravi).
child(gita,sita).
child(anita,sita).
child(sudha,smita).
child(sudha,ravi).
child(gita,harsh).
child(anita,harsh).
child(anu,ram).
child(anu,gita).
child(raju,anu).
child(dhruv,rahim).


father(X,Y):- child(Y,X), male(X).
mother(X,Y):- child(Y,X), female(X).
sibling(X,Y):- father(Y,Z), mother(Y,W), father(X,Z), mother(X,W), X\=Y.
stepsibling(X,Y):- father(Y,Z), father(X,Z), mother(X,W), mother(Y,V), X\=Y, W\=V.
stepsibling(X,Y):- mother(Y,Z), mother(X,Z), father(X,W), father(Y,V), X\=Y, W\=V.
brother(X,Y):- sibling(Y,X), male(X).
sister(X,Y):- sibling(Y,X), female(X).
stepbrother(X,Y):- stepsibling(Y,X), male(X).
stepsister(X,Y):- stepsibling(Y,X), female(X).
succsessor(X,Y):-child(Y,X).
succsessor(X,Y):- child(Y,Z), succsessor(X,Z).

grandchild(X,Z):- child(X,Y), child(Y,Z).
grandson(X,Y):- grandchild(X,Y), male(X).
granddaughter(X,Y):- grandchild(X,Y), female(X).
/*q1*/
uncle(X,Y):- child(Z,Y), brother(X,Z).
aunt(X,Y):- child(Z,Y), sister(X,Z).
cousin(X,Y):- child(Z,X), child(W,Y), brother(Z,W), sister(W,Z).
cousin(X,Y):- child(Z,X), child(W,Y), brother(W,Z), sister(Z,W).

