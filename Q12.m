% switch switch_expression, case case_expression, end evaluates an expression and chooses to execute one of several groups of statements. Each choice is a case.
% The switch block tests each case until one of the case expressions is true. A case is true when:
% For numbers, case_expression == switch_expression.
% For character vectors, strcmp(case_expression,switch_expression) == 1.
% For objects that support the eq function, case_expression == switch_expression. The output of the overloaded eq function must be either a logical value or convertible to a logical value.
% For a cell array case_expression, at least one of the elements of the cell array matches switch_expression, as defined above for numbers, character vectors, and objects.
% When a case expression is true, MATLAB® executes the corresponding statements and exits the switch block.
% An evaluated switch_expression must be a scalar or character vector. An evaluated case_expression must be a scalar, a character vector, or a cell array of scalars or character vectors.
% The otherwise block is optional. MATLAB executes the statements only when no case is true.

n = input('Enter a number: ');

switch n
    case -1
        disp('negative one')
    case 0
        disp('zero')
    case 1
        disp('positive one')
    otherwise
        disp('other value')
end