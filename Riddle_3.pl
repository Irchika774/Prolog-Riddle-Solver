% Define the riddle and its answer
riddle('People take me to eat but never eat me', plate).

% Query to solve the riddle by asking the question and giving the answer
solve_riddle :-
    riddle(Question, Answer),
    format('Riddle: ~w~n', [Question]),
    format('Answer: ~w~n', [Answer]).
%Query:solve_riddle.
