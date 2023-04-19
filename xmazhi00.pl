% Assignments c. 31:
% Test predicates:						                    % LOUT
u31_1:- u31([5,3,-18,2,-9,-13,17,4],VOUT),write(VOUT).		% Correct index -  7
u31_2:- u31([5,3.1,17,2,-9.4,-13,17,4], VOUT),write(VOUT).	% Correct index - 3
u31_3:- u31([5,3.3],VOUT),write(VOUT).				        % Correct index - 1
u31_r:- write('Input LIN: '),read(LIN), 
        u31(LIN,VOUT),write(VOUT).

% Solution:
u31([H|T], VOUT):-
    find_index(T, H, 1, 1, VOUT).

find_index([], _, _, VOUT, VOUT).

find_index([H|T], MAX, CURRENT, _, VOUT) :-
    H > MAX,
    NEXT is CURRENT + 1,
    find_index(T, H, NEXT, NEXT, VOUT).

find_index([H|T], MAX, CURRENT, INDEX, VOUT) :-
    H =< MAX,
    NEXT is CURRENT + 1,
    find_index(T, MAX, NEXT, INDEX, VOUT).
