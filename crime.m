%mencari angka 1 di file

%find lib
cream = xlsread('criminal.xlsx');
[baris, kolom] = find(cream==1);
posisi = [baris,kolom];
disp(posisi);

%manual
% [baris,kolom] = size(cream);
% for i=1:baris
%     for j=1:kolom
%         if(cream(i,j)==1)
%             posisi = [i,j];
%             disp(posisi);
%         end
%     end
% end

  