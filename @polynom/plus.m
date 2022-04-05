function r = plus(p,q)
% POLYNOM/PLUS Implement p + q for polynoms.
q_arr = double(q);
p_arr = double(p);
len = max(length(q_arr),length(p_arr));
q_arr=[q_arr, zeros(1,len-length(q_arr))];
p_arr=[p_arr, zeros(1,len-length(p_arr))];
arr = q_arr+p_arr;
r = polynom(arr);
end