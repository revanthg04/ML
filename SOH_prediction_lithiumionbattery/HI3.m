load('B0005.mat')
index1 = cell(1, 338 - 171 + 1);
index2 = cell(1, 338 - 171 + 1);
IHI3 = cell(4, 338 - 171 + 1);
norm_IHI3 = cell(4, 338 - 171 + 1);

x = 1;
for i = 1:616
    if strcmp(B0005.cycle(i).type, 'discharge')
        [~, index1{x, 1}] = min(abs(B0005.cycle(i).data.Voltage_measured - 3.8));% time taken to reach approx 3.8v
        [~, index2{x, 1}] = min(abs(B0005.cycle(i).data.Voltage_measured - 3.5));%time taken to reach approx 3.5v
        IHI3{x, 1} = B0005.cycle(i).data.Time(index2{x, 1}) - B0005.cycle(i).data.Time(index1{x, 1});%find the difference
        norm_IHI3{x, 1} = IHI3{x, 1}/IHI3{1,1};
        x=x+1;
    end
end

load('B0006.mat')
index1 = cell(1, 338 - 171 + 1);
index2 = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0005.cycle(i).type, 'discharge')
        [~, index1{x, 1}] = min(abs(B0006.cycle(i).data.Voltage_measured - 3.8));
        [~, index2{x, 1}] = min(abs(B0006.cycle(i).data.Voltage_measured - 3.5));
        IHI3{x, 2} = B0006.cycle(i).data.Time(index2{x, 1}) - B0006.cycle(i).data.Time(index1{x, 1});
        norm_IHI3{x, 2} = IHI3{x, 2}/IHI3{1,2};
        x=x+1;
    end
end

load('B0007.mat')
index1 = cell(1, 338 - 171 + 1);
index2 = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:616
    if strcmp(B0007.cycle(i).type, 'discharge')
        [~, index1{x, 1}] = min(abs(B0007.cycle(i).data.Voltage_measured - 3.8));
        [~, index2{x, 1}] = min(abs(B0007.cycle(i).data.Voltage_measured - 3.5));
        IHI3{x, 3} = B0007.cycle(i).data.Time(index2{x, 1}) - B0007.cycle(i).data.Time(index1{x, 1});
        norm_IHI3{x, 3} = IHI3{x, 3}/IHI3{1,3};
        x=x+1;
    end
end


load('B0018.mat')
index1 = cell(1, 338 - 171 + 1);
index2 = cell(1, 338 - 171 + 1);
x = 1;
for i = 1:319
    if strcmp(B0018.cycle(i).type, 'discharge')
        [~, index1{x, 1}] = min(abs(B0018.cycle(i).data.Voltage_measured - 3.8));
        [~, index2{x, 1}] = min(abs(B0018.cycle(i).data.Voltage_measured - 3.5));
        IHI3{x, 4} = B0018.cycle(i).data.Time(index2{x, 1}) - B0018.cycle(i).data.Time(index1{x, 1});
        norm_IHI3{x, 4} = IHI3{x, 4}/IHI3{1,4};
        x=x+1;
    end
end

