//sol of linear equations
clc
size=input("enter the no. of variables")
disp("enter the coefficients of 1st equation")

for i=1:size
    a(1,i)=input(string(i)+" coefficient")
end

disp('enter the coefficients of 2nd equation')
for i=1:size
    a(2,i)=input(string(i)+" coefficient")
end

if(size<4)
    disp('enter the coefficients of 3rd equation')
    for i=1:size
        a(3,i)=input(string(i)+" coefficient")
    end
end

for j=1:size
    b(j,1)=input('enter the constant of the '+string(j)+' equation')
end

for i=1:size
    for j=1:size
         A(i)=[a(i,j)]
    end
    B=[b(i,1)]
end
disp(A)
disp(B)
