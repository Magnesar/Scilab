//Abhay Singh Rawat
//19-17026
//B.Sc.(H)physics
//3rd semester
//finding the amount of charge in a capacitorafter 't' time in a RC circuit
//1-nov-2020
clc
clf
C=input("Enter the capacitance of the capacitor:")
disp("capacitance= "+string(C)+"farads")

Q=input("Enter the initial value of charge on the capacitor:")
disp("charge present initially= "+string(Q)+"coulombs")

V=input("enter the voltage of the battery")
disp("voltage of the battery "+string(V)+"volts")

R=input("enter the value of resistance")
disp("resistance= "+string(R)+"ohms")

t1=input("initial time limits")
tf=input("final time limits")
disp("time limits:")
disp("initial "+string(t1)+"sec")
disp("final "+string(tf)+"sec")

function dQ=f(t,Q)
    dQ=(V*C-Q)/(R*C)
endfunction

//Euler
n=input("enter the no of steps")
h=(tf-t1)/n
disp("stepsize found:"+string(h))

q=Q
t=t1
//applying euler
for i=1:1:n
    T(i)=t
    y(i)=q
    q=q+h*f(t,q)
    t=t+h
    qexact(i)=ode(Q,t1,t,f)
end

disp("charge on capacitor at t=55sec(by euler)="+string(q)+"C")

disp("charge on capacitor at t=55sec(by ode)="+string(qexact(n))+"C")

disp("charge on capacitor at t=23sec(by euler)="+string(y(floor(23/h)))+"C")

disp("charge on capacitor at t=23sec(by euler)="+string(ode(Q,t1,23,f))+"C")

//plot
plot(T,y,"r")
plot(T,qexact,"b")
legend("euler plot","ode plot")
xtitle("charge on capacitor V/S time")
xlabel("time")
ylabel("charge on capacitor")
    
