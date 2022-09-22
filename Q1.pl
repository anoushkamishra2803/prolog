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

parent(ram,rahim).
parent(gita,rahim).
parent(shyam,raj).
parent(anita,raj).
parent(anita,smita).
parent(ravi,smita).
parent(sita,gita).
parent(sita,anita).
parent(smita,sudha).
parent(ravi,sudha).
parent(harsh,gita).
parent(harsh,anita).
parent(ram, anu).
parent(gita, anu).
parent(anu, raju).
parent(rahim, dhruv).


father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).
sibling(X,Y):- father(Z,Y), mother(W,Y), father(Z,X), mother(W,X), X\=Y.
stepsibling(X,Y):- father(Z,Y), father(Z,X), mother(W,X), mother(V,Y), X\=Y, W\=V.
stepsibling(X,Y):- mother(Z,Y), mother(Z,X), father(W,X), father(V,Y), X\=Y, W\=V.
brother(X,Y):- sibling(X,Y), male(X).
sister(X,Y):- sibling(X,Y), female(X).
stepbrother(X,Y):- stepsibling(X,Y), male(X).
stepsister(X,Y):- stepsibling(X,Y), female(X).
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):- parent(Z,Y), ancestor(X,Z).

grandparent(X,Z):- parent(X,Y), parent(Y,Z).
grandfather(X,Y):- grandparent(X,Y), male(X).
grandmother(X,Y):- grandparent(X,Y), female(X).
/*q1*/
uncle(X,Y):- parent(Z,Y), brother(X,Z).
aunt(X,Y):- parent(Z,Y), sister(X,Z).
cousin(X,Y):- parent(Z,X), parent(W,Y), brother(Z,W), sister(W,Z).
cousin(X,Y):- parent(Z,X), parent(W,Y), brother(W,Z), sister(Z,W).
