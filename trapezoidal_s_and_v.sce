//Abhay Singh Rawat
//19/17026
//23-oct-2020
//distance and velocity bt accelaration using trapezoidal rule
clc
clf
//accelaration
function a=f(t)
    a=2*t
endfunction

//limits of time
t1=2 //in sec
t2=4

//no of trapezoids
n=input("Enter the no. of steps:")
//stepsize
h=(t2-t1)/n

//initial speed
u=20 //meters/sec


//trapezoidal for velocity
speed=u 
v=speed           //initial limits
t=t1
T=t
for i=1:n
    speed=speed+h*(f(t)+f(t+h))/2
    v(i)=speed 
     t=t+h 
    T(i)=t
end

disp(v(n),"Speed at t=4sec:")
plot(T,v)

//trapezoidal for distance
dis=0
s=0
for i=1:(n-1)
    inc2=h*(v(i)+v(i+1))/2
    dis=dis+inc2    
    s(i+1)=dis
end

disp(dis,"distance travelled in given time:")

plot(T,s,"g")
legend("speed","distance")

