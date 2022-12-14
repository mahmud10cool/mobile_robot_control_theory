%% Leverier algorithm
% This is to find the [sI-A]^-1 matrix
% We need to find two things
% The coefficients of the numerator and denominator

% Step 1: Define the problem
A_matrix = [0 1 0; 0 0 1; -6 -11 -6];
szA = size(A_matrix);

% Step 2: First iteration of the solution
P = eye(szA(1));
a = -trace(P*A_matrix);
display(P)
display(a)

% Step 3: The next iterations of the solutions
for i = 2:szA(1)
    P = P * A_matrix + a * eye(szA(1));
    a = -(1/i)*(trace(P*A_matrix));
    display(i)
    display(P)
    display(a)
end
