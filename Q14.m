clear;	%clear removes all variables from the current workspace, releasing them from system memory.
a = input(' Enter the first integer : ');	%The command line prompts for the first integer
b = input(' Enter the second integer : ');	%The command line prompts for the second integer
c = 1;	%Assign c a value of 1
while c==1	%Loop statement, determine if c is equal to 1, if c is equal to 1, execute the following statement, otherwise, jump out of the loop
     if (b > a)	%Determine if b is greater than a
         b = rem(b, a);	%assign b to rem(b, a)
      else	%If b is less than or equal to a, the following statement is executed
          a= rem(a, b);	%assign a to  rem(a, b)
      end	%End of judgement statement
      if (min([a, b])==0)	%Determine whether the smallest of a and b is equal to 0. If it is 0, execute the following statement
           result = max([a, b]);	%assign result to the maximum of a and b
           c=0;	%Assign a value of 0 to c
      end	%End of judgement statement
end	%End of loop statement
disp([' The result is = ' int2str(result)]);	%Command line window showing the resulting values