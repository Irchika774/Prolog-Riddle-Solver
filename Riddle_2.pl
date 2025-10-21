
%Mary buys one rabbit.
%Rabbit mate once a month and have 7 babies per litter.
%How many rabbits after 12 months





initial_rabbits(1).

can_breed(Rabbits) :-
    Rabbits >= 2.

babies_per_month(7).

rabbits_after_months(0, Rabbits, Rabbits).

rabbits_after_months(Months, Current, Final) :-
    Months > 0,
    ( can_breed(Current) ->
        babies_per_month(Babies),
        NewCurrent is Current + Babies
    ;
        NewCurrent is Current
    ),
    NextMonth is Months - 1,
    rabbits_after_months(NextMonth, NewCurrent, Final).

solve_rabbit_puzzle :-
    initial_rabbits(Start),
    rabbits_after_months(12, Start, FinalCount),
    format("Number of rabbits after 12 months: ~w~n", [FinalCount]).
