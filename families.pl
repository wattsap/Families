male(john).
male(al).
male(ray).
male(peter).
male(chris).
male(johnT).
male(pat).
male(sean).
male(andrew).
male(patrick).
female(angela).
female(ruth).
female(iris).
female(jane).
female(jamie).
female(jenny).
female(laurel).
female(bonnie).
female(ellen).
female(katie).
female(melanie).
parent(iris, peter).
parent(al, peter).
parent(john, andrew).
parent(angela, andrew).
parent(john, jane).
parent(angela, jane).
parent(al, john).
parent(iris, john).
parent(al, bonnie).
parent(iris, bonnie).
parent(iris, ellen).
parent(al, ellen).
parent(ellen, patrick).
parent(pat, patrick).
parent(ellen, katie).
parent(pat, katie).
parent(ellen, melanie).
parent(pat, melanie).
parent(bonnie, jenny).
parent(bonnie, johnT).
parent(bonnie, jamie).
parent(chris, jenny).
parent(chris, johnT).
parent(chirs, jamie).
parent(ray, angela).
parent(ruth, angela).
child(angela, andrew).
child(john, andrew).
child(al, bonnie).
child(al, john).
child(iris, bonnie).
child(iris, john).
child(al, peter).
child(iris, peter).
child(ellen, katie).
child(ellen, patrick).
child(ellen, melanie).
child(pat, katie).
child(pat, patrick).
child(pat, melanie).
child(bonnie, johnT).
child(bonnie, jamie).
child(bonnie, jenny).
child(chris, johnT).
child(chris, jamie).
child(chris, jenny).
married(john, angela).
married(ray, ruth).
married(al, iris).
married(peter, laurel).
married(sean, jenny).
married(chris, bonnie).
grandparent(al, andrew).
grandparent(iris, andrew).
grandparent(al, katie).
grandparent(iris, katie).
grandparent(al, patrick).
grandparent(al, melanie).
grandparent(iris, patrick).
grandparent(iris, melanie).
grandparent(al, johnT).
grandparent(al, jenny).
grandparent(al, jamie).
grandparent(iris, johnT).
grandparent(iris, jenny).
grandparent(iris, jamie).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X\==Y.
brother(X, Y) :- male(X), sibling(X, Y), X\==Y.
sister(X, Y) :- female(Y), sibling(X, Y).
aunt(X, Y) :- female(X), sibling(X, P), parent(P, Y).
uncle(X, Y) :- male(X), sibling(X, P), parent(P, Y). 
cousin(X,Y) :- uncle(U, X), father(U, Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(P, Y), ancestor(X, P).
descendant(X, Y) :- child(X, Y).
descendant(X, Y) :- child(X, Z), descendant(Z, Y).
