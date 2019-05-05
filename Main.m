%First we create the zeroed arrays
vol = zeros(size(Volume));
hi = zeros(size(High));
lo = zeros(size(Low));
mc = zeros(size(MarketCap));
op = zeros(size(Open));
cl = zeros(size(Close));
%We get the size of the arrays
tam = size(Volume, 1);
tam2 = tam;
%We invert the order of the original arrays so it goes from the beginning 
for i = 1 : tam;
    vol(i) = Volume(tam2);
    hi(i) =  High(tam2);
    mc(i) = MarketCap(tam2);
    lo(i) = Low(tam2);
    op(i) = Open(tam2);
    cl(i) = Close(tam2);
    tam2 = tam2 - 1;
end

R = corrcoef(op, cl);
scatter(op, cl);
