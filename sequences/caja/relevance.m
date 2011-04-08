clear all; close all;
im = imread('101_i110.ppm');


i0 = 1; j0 = 1;
[i1 j1 c] = size(im);

b = zeros(i1,j1);
s0 = 0.1;
ub = 100;
for i=i0:i1
    for j=j0:j1
        
        maxI = max(im(i,j,:));
        minI = min(im(i,j,:));  
        
        s1 = (maxI-minI)/maxI;       
        
        b(i,j) = sigmoid(double(s1),s0,ub);
                       
    end
end

 
 