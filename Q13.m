clear	%clear removes all variables from the current workspace, releasing them from system memory.
y=0;	%Assign y a value of 2
x=1;	%Assign x a value of 1
var=10;	%Assign var to 10
for a=1:20	% starts the loop, a=1,2,3,... ,20
     y=5*x^3+log(x)+7*x;	%Assign y with the value of the function 5*x^3+log(x)+7*x
     dy=15*x^2+1/x+7;	%Assign dy with the value of the function 15*x^2+1/x+7
     new_x=x-(y/dy);	%Assign new_x with the value of the function x - (y/dy)
     var=abs(x-new_x);	%Assign var with the value of the function abs(x - new_x)
     if (var<1e-6)	%Determine if (var<1e-6) is true, if so, execute the following statement, otherwise do not execute the following statement
         break;	%Jumping out of the loop
     end	%End of judgement statement
     x=new_x;	%Assign x to new_x
end	%End of loop statement
x	%The output window shows the value of x