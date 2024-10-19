//Abhay Singh Rawat
//legendre's generating function and graph by recurrence relation
//21/10/2020

clc
clf
x=poly(0,'x')
a0=1
a1=x
n=input("enter the value of  n:")
disp("1st term",a0,"2nd term",a1)

xdata=linspace(-1,1,1000)
//plot(xdata,horner(a0,xdata))
//plot(xdata,horner(a1,xdata))


for i=1:1:(n-2)
    a2=((2*i+1)*x*a1-i*a0)/(i+1)
    
    
    disp(string(i+2)+"th term",a2)
    a0=a1
    a1=a2
end
plot(xdata,horner(a2,xdata))
