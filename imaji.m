I = imread('123.jpg');
z = zeros(size(i));
[panjang, lebar, tinggi] = size(i);

for i=1:panjang
    for j=1:lebar
        for k=1:tinggi
            z(j,i,k)= I(i,j,k)
        end
    end
end
imshow(z);