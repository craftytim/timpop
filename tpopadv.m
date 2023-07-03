%timpop gui version
%buggy
pp=figure('Units','normalized','Position',[.01,.3,.485,.6],...   
   'Name','Phase plane');   
axes
axis([0 10 0 10]) %change this to change bounds
hold on;

figure(pp);
tp=figure('Units','normalized','Position',[.505,.3,.485,.6],...   
   'Name','Time plot'); 
axes
Q=0
P=0
%change these to change simulated model
Pnew = 'P*exp(0.3*(1-P/5))-0.3*Q'
Qnew = '0.9*P*(1-exp(-0.5*Q))'
while true
    figure(pp)
[P,Q,button] = ginput(1)
if button == 1
pops2 = tpop(Pnew,Qnew,Q,P)
figure(pp)
plot(pops2(1,:),pops2(2,:),pops2(1,:),pops2(2,:))
pops = rot90(rot90(rot90(pops2)))
figure(tp)
plot(pops)
end
end