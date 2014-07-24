files = dir('data/*.result');

for file = files'
    fname = file.name;
    disp(['converting ', fname, '...']);
    convert_overfeat(['data/', fname]);
end