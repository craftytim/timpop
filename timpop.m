%timpop by timothy milner 2023
%because twopop sucks
%start variables
r = 1, k = 5, s = 0.1, u = 0.05, v = 0.1
%starting point
P = 1, Q = 1

pops = [P Q]
pp=figure()
tp=figure()

for i = 1:300 %<- iteration count
    %p update equation
x1 = P*(1+r*(1-P/k))-s*P*Q
    %q update equation
x2 = (1 - u)*Q + v*P*Q
pops = [pops; x1 x2]
P=x1
Q=x2
end
% plotting
pops2 = rot90(pops)
plot(pops)
figure(pp)
c = rot90(pops)
plot(pops2(1,:),pops2(2,:),pops2(1,:),pops2(2,:))