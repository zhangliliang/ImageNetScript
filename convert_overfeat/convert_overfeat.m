function convert_overfeat(ifile)
    load('meta_clsloc.mat');
    dict = java.util.Hashtable;
    for i = 1:numel(synsets)
        dict.put(synsets(i).words, i);
    end

    %ifile = 'center.result';
    ofile = [ifile '.out'];

    fin = fopen(ifile);
    %fout = fopen('convert.result', 'w');
    fout2 = fopen(ofile, 'w');
    num = 0;
    while (~feof(fin))
        line = fgetl(fin);
        parts = regexp(line, ' ', 'split');
        cls = '';
        for i = 1:size(parts,2)-1
            cls = [cls parts{i} ' '];
        end
        id = dict.get(cls(1:end-1));
        if isempty(id)
            error('isempty');
        end

        %fprintf(fout, '%d ', id);
        %fprintf(fout, '1 2 3 4 ');

        fprintf(fout2, '%d %s ', id, parts{end});

        num = num + 1;
        if num == 5
            num = 0;
            %fprintf(fout, '\n');
            fprintf(fout2, '\n');
        end
    end

    fclose(fin);
    %fclose(fout);
    fclose(fout2);

