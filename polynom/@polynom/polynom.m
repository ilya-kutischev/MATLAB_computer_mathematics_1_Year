function p = polynom(a)
%POLYNOM Polynomial class constructor.
% p = POLYNOM(v)
if nargin == 0
    p.c = [];                  % default constructor
    p = class(p, 'polynom');
elseif isa(a, 'polynom');
    p = a;                     % copy constructor
else
    p.c = a(:).';              % constructor with parameters
    p = class(p, 'polynom');
end