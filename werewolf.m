% permainan werewolf

% step 1
% buat matrix 3x3
filename = 'werewolf.xlsx';
A = [1,0,1;1,1,0;1,1,1];
xlswrite(filename,A);

% step 2
%read data matrix
ww = xlsread('werewolf.xlsx');

% step 3
% hitung jumlah werewolf & vilager
w = 0;
v = 0;  
[baris, kolom] = size(ww);
for i=1:baris
    for j=1:kolom
        if(ww(i,j)== 0)
            w = w + 1;
        elseif(ww(i,j)== 1)
            v = v + 1;
        end
    end
end

%step 4
% menebak isi kotak
disp('tebak werewolf');
while w>0 & v>0
    bar = 'masukkan baris: ';
    sbar = input(bar);
    kol = 'masukkan kolom: ';
    skol = input(kol);
    if(ww(sbar,skol)==0)
        w = w - 1;
        disp('Werewolf');
    elseif(ww(sbar,skol)==1)
        v = v - 1;
        disp('Villager');
    end
end

%step 5
% menentukan pemenang
if v>w
    disp('Selamat vilager menang');
elseif v<w
    disp('Yah, werewolf menang');
end












