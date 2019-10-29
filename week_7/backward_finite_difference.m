function [ dfh ] = backward_finite_difference( fun, xnodes, h )

dfh = [];
N = length(xnodes);

for t = 1:1:N
    node = xnodes(t);
    dfh_next = (fun(node)-fun(node-h))/h;
    dfh=[dfh,dfh_next];
end


return