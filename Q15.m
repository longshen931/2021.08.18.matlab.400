%y=round(rand(1,2000)*1500)';x=1:2000;x=x';
%15.1
clear,clc
load x 
load y
semilogy(x,y)
%15.2
alert_signal(15)
%15.3
output = weekly_average(x,y)
%15.4
rng default % for reproducibility
tdata = 1:1:120;
ydata = round(rand(1,120)*1500);
fun = @(x)sseval(x,tdata,ydata);
x0 = rand(2,1);
bestx = fminsearch(fun,x0);
A = bestx(1);
lambda = bestx(2);
yfit = A*exp(-lambda*tdata+1);
plot(tdata,ydata,'*');
hold on
plot(tdata,yfit,'r');
xlabel('tdata')
ylabel('Response Data and Curve')
title('Data and Best Fitting Exponential Curve')
legend('Data','Fitted Curve')
hold off
m=A;
n=1/lambda;
yfit = m*exp(-1/n*tdata+1);
for t=tdata
    yhat = m*exp(-1/n*t+1);
        if yhat<1000
            fprintf("water quality within safe limits again at t=%d hour\n",t)
            break
        end
end
