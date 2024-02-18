% Load the MAT file
capacity = cell(4, 338 - 171 + 1);
 soh = cell(4, 338 - 171 + 1);
load('B0005.mat');
% Access variables inside multilevel structs using a loop
x = 1;
for i = 1:616
    if strcmp(B0005.cycle(i).type, 'discharge')
       
        capacity{x, 1} = B0005.cycle(i).data.Capacity;%capacity calues
        soh{x, 1} = capacity{x, 1}/capacity{1,1};%normalized values
        x = x + 1;
    end
end
load('B0006.mat');
% Access variables inside multilevel structs using a loo
x = 1;
for i = 1:616
    if strcmp(B0006.cycle(i).type, 'discharge')
       
      capacity{x, 2} = B0006.cycle(i).data.Capacity;
      soh{x, 2} = capacity{x, 2}/capacity{1,2};
        x = x + 1;
    end
end
load('B0007.mat');
x = 1;
for i = 1:616
    if strcmp(B0007.cycle(i).type, 'discharge')
       
        capacity{x, 3} = B0007.cycle(i).data.Capacity;
        soh{x, 3} = capacity{x, 3}/capacity{1,3};
        x = x + 1;
    end
end
load('B0018.mat');
% Access variables inside multilevel structs using a loop
x = 1;
for i = 1:319
    if strcmp(B0018.cycle(i).type, 'discharge')
       
        capacity{x, 4} = B0018.cycle(i).data.Capacity;
        soh{x, 4} = capacity{x, 4}/capacity{1,4};
        x = x + 1;
    end
end
soh_table = cell2table(soh);
