IHI2 = cell(4, 338 - 171 + 1);
norm_IHI2 = cell(4, 338 - 171 + 1);

load('B0005.mat')
max_value = cell(1, 338 - 171 + 1);
max_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0005.cycle(i).type, 'discharge')
        max_value{x, 1} = max(B0005.cycle(i).data.Temperature_measured); % Find the minimum value in the row
        max_index{x, 1} = find(B0005.cycle(i).data.Temperature_measured == max_value{x, 1});
        IHI2{x, 1} = B0005.cycle(i).data.Time(max_index{x, 1});
        norm_IHI2{x, 1} = IHI2{x, 1}/IHI2{1,1};
        x=x+1;
    end
end
load('B0006.mat')
max_value = cell(1, 338 - 171 + 1);
max_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0006.cycle(i).type, 'discharge')
        max_value{x, 1} = max(B0006.cycle(i).data.Temperature_measured); % Find the minimum value in the row
        max_index{x, 1} = find(B0006.cycle(i).data.Temperature_measured == max_value{x, 1});
        IHI2{x, 2} = B0006.cycle(i).data.Time(max_index{x, 1});
         norm_IHI2{x, 2} = IHI2{x, 2}/IHI2{1,2};
        x=x+1;
    end
end
load('B0007.mat')
max_value = cell(1, 338 - 171 + 1);
max_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0007.cycle(i).type, 'discharge')
        max_value{x, 1} = max(B0007.cycle(i).data.Temperature_measured); % Find the minimum value in the row
        max_index{x, 1} = find(B0007.cycle(i).data.Temperature_measured == max_value{x, 1});
        IHI2{x, 3} = B0007.cycle(i).data.Time(max_index{x, 1});
        norm_IHI2{x, 3} = IHI2{x, 3}/IHI2{1,3};
        x=x+1;
    end
end
load('B0018.mat')
max_value = cell(1, 338 - 171 + 1);
max_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:319
    if strcmp(B0018.cycle(i).type, 'discharge')
        max_value{x, 1} = max(B0018.cycle(i).data.Temperature_measured); % Find the minimum value in the row
        max_index{x, 1} = find(B0018.cycle(i).data.Temperature_measured == max_value{x, 1});
        IHI2{x, 4} = B0018.cycle(i).data.Time(max_index{x, 1});
        norm_IHI2{x, 4} = IHI2{x, 4}/IHI2{1,4};
        x=x+1;
    end
end