function [Y, InitialMatrix] = parse_data_set_file(file_path)
  in = fopen(file_path, "r");
  rows = fscanf(in, '%d', 1);
  cols = fscanf(in, '%d', 1);

  InitialMatrix = cell(rows, cols);
  for i = 1:rows
    Y(i) = fscanf(in, '%d', 1);
       for j = 1:cols
        InitialMatrix{i, j} = fscanf(in, '%s', 1);
    end
  endfor

  fclose(in);

endfunction
