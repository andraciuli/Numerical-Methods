function [Y, InitialMatrix] = parse_csv_file(file_path)
  fid = fopen(file_path);
  file_contents = textscan(fid, '%s', 'delimiter', '\n');
  fclose(fid);

  % Extract the first row, which contains the column names
  header_row = strsplit(file_contents{1}{1}, ',');

  % Count the number of columns
  num_cols = length(header_row);

  data_rows = file_contents{1}(2:end);
  num_rows = length(data_rows);

  for i = 1 : num_rows
    row = strsplit(data_rows{i}, ',');
    Y{i} = str2double(row{1});
    for j = 1 : num_cols - 1
      InitialMatrix{i, j} = row{j + 1};
    end
  end
endfunction
