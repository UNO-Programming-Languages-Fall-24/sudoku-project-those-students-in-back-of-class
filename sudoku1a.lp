% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n = 2.
{sudoku(X,Y,N):N=1..(n*n)}=1:-X=1..(n*n),Y=1..(n*n).
:-sudoku(X,Y,N),sudoku(X',Y,N),X'=1..(n*n),X!=X'.
:-sudoku(X,Y,N),sudoku(X,Y',N),Y'=1..(n*n),Y!=Y'.
%:-sudoku(X,Y,N),sudoku(X',Y',N),(((X-1)/n)*n+(Y-1)/n)=(((X'-1)/n)*n+(Y'-1)/n),X'=1..(n*n),Y'=1..(n*n),X'!=X,Y'!=Y,W=1..(n*n).
:-sudoku(X,Y,N),initial(X,Y,N'),N'=1..(n*n),N!=N'.
#show sudoku/3.