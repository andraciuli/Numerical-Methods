function [X_train, y_train, X_test, y_test] = split_dataset(X, y, percent)
  % X -> the loaded dataset with all training examples
  % y -> the corresponding labels
  % percent -> fraction of training examples to be put in training dataset

  % X_[train|test] -> the datasets for training and test respectively
  % y_[train|test] -> the corresponding labels

  % Example: [X, y] has 1000 training examples with labels and percent = 0.85
  %           -> X_train will have 850 examples
  %           -> X_test will have the other 150 examples

  % Shuffle the indices of the dataset
  indices = randperm(size(X, 1));

  % Determine the split index between training and test datasets
  split_idx = floor(percent * length(indices));

  % Split the indices into training and test indices
  train_indices = indices(1:split_idx);
  test_indices = indices(split_idx + 1:end);

  % Assign the data and labels to the training and test sets
  X_train = X(train_indices, :);
  y_train = y(train_indices, :);
  X_test = X(test_indices, :);
  y_test = y(test_indices, :);
endfunction

