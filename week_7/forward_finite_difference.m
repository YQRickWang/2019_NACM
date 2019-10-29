function [ dfh ] = forward_finite_difference( fun, xnodes, h )
% FORWARD_FINITE_DIFFERENCE approximate the first derivative of a function
% in the nodes by using the forward finite difference scheme
%
%  [ dfh ] = forward_finite_difference( fun, xnodes, h )
%  Inputs: fun = function handle, 
%          xnodes = vector of nodes' coordinates
%          h = coordinates increment; positive and scalar value. 
%  Output: dfh = approximate values of the first derivatives of fun in the
%          nodes.
%

N = length(xnodes);
dfh = [];

for t = 1:1:N
    %compute the derivitive for each node
    node = xnodes(t);
    dfh_next = (fun(node+h)-fun(node))/h;
    dfh=[dfh,dfh_next];
end


return