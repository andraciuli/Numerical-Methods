function [Labyrinth] = parse_labyrinth(file_path)
	in = fopen(file_path, "r");
  rows = fscanf(in, '%d', 1);
  cols = fscanf(in, '%d', 1);

  Labyrinth = zeros(rows, cols);
  for i = 1:rows
    for j = 1:cols
        Labyrinth(i,j) = fscanf(in, '%d', 1);
    end
  end

  fclose(in);

endfunction
