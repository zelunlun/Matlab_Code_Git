% Cb2
% 取得第二個控制物件的數值
pointNum = round(str2num(get(h2, 'string')));
% 若數字太大或太小，則設定為10
if pointNum <= 1 | pointNum > 100
    pointNum = 10;
    set(h2, 'string',int2str(pointNum));
end
 
% 根據所得數字，重畫peaks曲面
[xx, yy, zz] = peaks(pointNum);
surf(xx, yy, zz);
axis tight;
 