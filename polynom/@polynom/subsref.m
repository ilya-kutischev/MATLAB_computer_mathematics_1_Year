function b = subsref(p,s)
% @polynom/subsref.m

switch s.type
    case ' () '
        ind=s.subs(:);
        for k= 1:length(ind)
            b(k)=eval(strrep(char(p), 'x',['(',num2str(ind(k)),')']));
        end
    otherwise
        error('Specife value for x as p(x)')
end