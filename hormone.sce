clf
clc
A=1
B=1
K=0.05
t1=0
tf=500
function dy=f(t,y)
    dy=A+B*cos((%pi/12)*t)-K*y
endfunction

//Euler
n=input("enter the no of steps")
h=(tf-t1)/n
disp("stepsize found:"+string(h))

t=t1
y=0
//applying euler
for i=1:1:n
    y=y+h*f(t,y)
    t=t+h
    plot(t,y,"*")
end

//plot(T,yexact,"b")
//legend("euler plot","ode plot")
