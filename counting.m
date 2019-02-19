%count angka
cream = xlsread('count.xlsx');
a= 0;
b= 0;
c= 0;
d= 0;
e= 0;
f= 0;
[baris,kolom] = size(cream);
for i=1:baris
    for j=1:kolom
        if(cream(i,j)==0)
            a=a+1;
        elseif(cream(i,j)==1)
            b=b+1;
        elseif(cream(i,j)==2)
            c=c+1;
        elseif(cream(i,j)==3)
            d=d+1;
        elseif(cream(i,j)==4)
            e=e+1;
        elseif(cream(i,j)==5)
            f=f+1;
        end
    end
end
disp([a,b,c,d,e,f]);
 