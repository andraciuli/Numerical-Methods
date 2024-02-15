function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
  [num_rows, num_cols] = size(InitialMatrix);
  FeatureMatrix = zeros(num_rows, num_cols);
  for row = 1:num_rows
    curr_col = 1;
    for col = 1:num_cols;
        if strcmp(InitialMatrix{row, col}, 'no') || strcmp(InitialMatrix{row, col}, 'yes')
            FeatureMatrix(row, curr_col) = strcmp(InitialMatrix{row, col}, 'yes');
            curr_col = curr_col+1;
        elseif strcmp(InitialMatrix{row, col}, 'semi-furnished') || strcmp(InitialMatrix{row, col}, 'unfurnished') || strcmp(InitialMatrix{row, col}, 'furnished')
            if strcmp(InitialMatrix{row, col}, 'semi-furnished')
                FeatureMatrix(row, curr_col) = 1;
                FeatureMatrix(row, curr_col+1) = 0;
                curr_col = curr_col+2;
            elseif strcmp(InitialMatrix{row, col}, 'unfurnished')
                FeatureMatrix(row, curr_col) = 0;
                FeatureMatrix(row, curr_col+1) = 1;
                 curr_col = curr_col+2;
            elseif strcmp(InitialMatrix{row, col}, 'furnished')
               FeatureMatrix(row, curr_col) = 0;
               FeatureMatrix(row, curr_col+1) = 0;
                curr_col = curr_col+2;
            end
        else
            FeatureMatrix(row, curr_col) = str2double(InitialMatrix{row, col});
             curr_col = curr_col+1;
        end
    end
   end
endfunction
