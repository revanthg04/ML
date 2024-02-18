IHI1= cell(4, 338 - 171 + 1);
norm_IHI1 = cell(4, 338 - 171 + 1);
load('B0005.mat')
min_value = cell(1, 338 - 171 + 1);
min_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0005.cycle(i).type, 'discharge')
        min_value{x, 1} = min(B0005.cycle(i).data.Voltage_measured); % Find the minimum value in the row
        min_index{x, 1} = find(B0005.cycle(i).data.Voltage_measured == min_value{x, 1});%find the index of the min value
        IHI1{x, 1} = B0005.cycle(i).data.Time(min_index{x, 1});
        norm_IHI1{x, 1} = IHI1{x, 1}/IHI1{1,1};
        norm_IHI1{x, 2} = soh{x,1};
        x=x+1;
    end
end

load('B0006.mat')
min_value = cell(1, 338 - 171 + 1);
min_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0006.cycle(i).type, 'discharge')
        min_value{x, 1} = min(B0006.cycle(i).data.Voltage_measured); % Find the minimum value in the row
        min_index{x, 1} = find(B0006.cycle(i).data.Voltage_measured == min_value{x, 1});% find the min index of min value
       IHI1{x, 2} = B0006.cycle(i).data.Time(min_index{x, 1});
       norm_IHI1{x, 3} = IHI1{x, 2}/IHI1{1,2};
       norm_IHI1{x, 4} = soh{x,2};
        x=x+1;
    end
end
load('B0007.mat')
min_value = cell(1, 338 - 171 + 1);
min_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0007.cycle(i).type, 'discharge')
        min_value{x, 1} = min(B0007.cycle(i).data.Voltage_measured); % Find the minimum value in the row
        min_index{x, 1} = find(B0007.cycle(i).data.Voltage_measured == min_value{x, 1});
        IHI1{x, 3} = B0007.cycle(i).data.Time(min_index{x, 1});
        norm_IHI1{x, 5} = IHI1{x, 3}/IHI1{1,3};
        norm_IHI1{x, 6} = soh{x,3};
        x=x+1;
    end
end
load('B0018.mat')
min_value = cell(1, 338 - 171 + 1);
min_index = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:319
    if strcmp(B0018.cycle(i).type, 'discharge')
        min_value{x, 1} = min(B0018.cycle(i).data.Voltage_measured); % Find the minimum value in the row
        min_index{x, 1} = find(B0018.cycle(i).data.Voltage_measured == min_value{x, 1});
        IHI1{x, 4} = B0018.cycle(i).data.Time(min_index{x, 1});
       norm_IHI1{x, 7} = IHI1{x, 4}/IHI1{1,4};
       norm_IHI1{x, 8} = soh{x,4};
        x=x+1;
    end
end
IHI1_table = cell2table(IHI1);
norm_IHI1_table = cell2table(norm_IHI1);



% clearing workspace
clear("min_value")
clear("min_index")
clear("B0005")
clear("B0006")
clear("B0018")
clear("B0007")
clear("i")
clear("norm_IHI1")
clear("x")
clear ("training_norm_IHI1")
clear ("testing_norm_IHI1")