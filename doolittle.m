%Doolittle Method
A = [1 1 1
     1 2 2
     1 2 3]

B = [5
     6
     8]

matrixSize = length(A)
L = zeros(size(A));
U = zeros(size(A));
U(1,:) = A(1,:);
L(:,1) = A(:,1)/ Upper(1,1);
L1(1,1)=1;

for k = 2:matrixSize
for i = 2:matrixSize
    for j = i:matrixSize
        U(i,j) = A(i,j)-dot(L(i,1:i-1), U(1:i-1,j));
    end
    L(i,k) = (A(i,k)-dot(L(i,1:k-1), U(1:k-1,k))) / U(k,k);
end
end

U
L

% LY = B
Y = zeros(matrixSize,1);
Y(1)=B(1);
for row = 2:matrixSize
    Y(row) = B(row);
    for col = 1: row-1
        Y(row)=Y(row)-L(row,col)*Y(col);
    end
    Y(row)= Y(row)/L(row,row);
end
Y

%UX = Y
x = zeros(matrixSize,1);
x(matrixSize) = Y(matrixSize)/U(matrixSize,matrixSize);
for row = matrixSize -1: -1 : 1    %Second to the last row
    temp =0;
    for col= matrixSize: -1 : 1
        temp = temp + U(row,col)*x(col);
    end
    x(row)=(Y(row)-temp)/U(row,row);
end
x
