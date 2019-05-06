%Add path for the datasets
addpath('DataSets')
%First we create the zeroed arrays
dates = {};
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
    dates{i,1} = Date{tam2};
    tam2 = tam2 - 1;
end
%We only have 3 months worth of data, so we look for the index where the
%date is Feb 5 2019 (05/02/2019) and save the index
start = 0;
for i = 1 : 2198;
    if(strcmp(dates{i,1}, '05/02/2019'))
        start = i;
        i = 2198;
    end
end
