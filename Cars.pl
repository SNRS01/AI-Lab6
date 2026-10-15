car(chrysler, 130000, 3, red, 12000).
car(ford, 90000, 4, gray, 25000).
car(datsun, 80000, 1, red, 30000).

truck(ford, 80000, 6, blue, 8000).
truck(datsun, 50000, 5, orange, 20000).
truck(toyota, 25000, 2, black, 25000).

% Original Rule:

can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write( 'you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write(' With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% New Rule:

can_buy(Cost, Colour) :-
    car(Model, C1, _, Colour, _),
    C1 < Cost,
    write(' With '), write(C1),
    write(' you can purchase the '), write(Colour), write(' car '), write(Model),
    nl.

can_buy(Cost, Colour) :-
    truck(Model, C2, _, Colour, _),
    C2 < Cost,
    write('With '), write(C2), write(' you can purchace the '),
    write(Colour), write(' truck '), write(Model), nl.

% Test Quiries:
% 29 ?- can_buy(100000, red).
% With 80000 you can purchase the red car datsun  true .
%
% 30 ?- can_buy(100000, blue).
%With 80000 you can purchace the blue truck ford true.
%
% 31 ?- can_buy(100000, green).  false.
%
% 32 ?- can_buy(100000).
% With 90000you can purchase the car ford  true ;
% With 80000you can purchase the car datsun  true ;
% With 80000 you can purchase the truck ford  true ;
% With 50000 you can purchase the truck datsun  true ;
% With 25000 you can purchase the truck toyota  true.


