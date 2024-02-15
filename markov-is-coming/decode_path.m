function [decoded_path] = decode_path (path, lines, cols)

   % Preallocate decoded_path with zeros
	decoded_path = zeros(length(path), 2);

    for i = 1:length(path)
       % Convert the index to (row, col) pair
        row = ceil(path(i) / cols);
        col = mod(path(i) - 1, cols) + 1;

        % Add the pair to decoded_path
        decoded_path(i, :) = [row, col];
    end

    % remove WIN state
    decoded_path = decoded_path(path ~= (lines*cols+1), :);

endfunction
