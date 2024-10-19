//abhay singh rawat
//15-oct-2020
//eq1: 2x+3y+5z=23
// eq2:3x+4y+z=14
//eq3: 6x+7y+2z=26
clc
//1st eq
for i=1:3
    a(1,i)=input('enter the  coefficient '+string(i)+' of the first eq:')
    a(2,i)=input('enter the  coefficient '+string(i)+' of the second eq:')
    a(3,i)=input('enter the coefficient ' +string(i)+' of the third eq:')
end
//constants
for i=1:3
    b(i)=input('enter the eq'+string(i)+' constant')
end
//matrices formed
for i=1:3
       for j=1:3
           A(i,j)=[a(i,j)]
     end
  B(i)=[b(i)]
end
disp('A=',A)
disp("B=",B)


//making a(1,1)=1
//first transformation
n=a(1,1)
n1=a(2,1)
n2=a(3,1)
for i=1:3
    a(1,i)=a(1,i)/n
    a(2,i)=a(2,i)-n1*a(1,i)
    a(3,i)=a(3,i)-n2*a(1,i)
end
//constants
b(1,1)=b(1,1)/n
b(2,1)=b(2,1)-n1*b(1,1)
b(3)=b(3)-n2*b(1)
disp('after first transformation')
for i=1:3
       for j=1:3
           A(i,j)=[a(i,j)]
     end
  B(i)=[b(i)]
end                  
disp('A=',A)
disp("B=",B)

//making a(2,2)=1
//second transformation
n=a(2,2)
n1=a(3,2)
for i=1:3
    a(2,i)=a(2,i)/n
   a(3,i)=a(3,i)-n1*a(2,i)
end
//constants
b(2,1)=b(2,1)/n
b(3,1)=b(3,1)-n1*b(2)
disp('after second transformation')
for i=1:3
       for j=1:3
           A(i,j)=[a(i,j)]
     end
  B(i)=[b(i)]
end                  
disp('A=',A)
disp("B=",B)

//finding x,y,z
z=b(3)/a(3,3)
y=b(2)-a(2,3)*z
x=b(1)-a(1,2)*y-a(1,3)*z
disp('solutions:')
disp(x,y,z)
