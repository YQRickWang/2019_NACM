function [ dfh ] = centered_finite_difference( fun, xnodes, h )

dfh=[];
N = length(xnodes);

for t = 1:1:N
    node = xnodes(t);
    dfh_next = (fun(node+h)-fun(node-h))/(2*h);
    dfh=[dfh,dfh_next];
end


return