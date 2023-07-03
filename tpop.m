%timpop FUNCTION VERSION by timothy milner 2023
%syntax: Pnew and Qnew are your update functions - put them in quotes.
%Pstart and Qstart are your starting population
    function out = ftpop(Pnew,Qnew,Pstart,Qstart)
P = Pstart
Q = Qstart
pops = [P Q]
%pp=figure()
%tp=figure()

for i = 1:300 %<- iteration count
    %p update equation
x1 = eval(Pnew)
    %q update equation
x2 = eval(Qnew)
pops = [pops; x1 x2]
P=x1
Q=x2
end
% plotting
pops2 = rot90(pops)
%plot(pops)
%figure(pp)
out = pops2
%plot(pops2(1,:),pops2(2,:),pops2(1,:),pops2(2,:))
end