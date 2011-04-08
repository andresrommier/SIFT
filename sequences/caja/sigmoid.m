function s = sigmoid(s1,s0,ub)

s = 1 / (1+exp(-ub*(s1-s0)));


end