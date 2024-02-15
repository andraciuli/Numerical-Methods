function [Error] = linear_regression_cost_function(Theta, Y, FeatureMatrix)

  % Number of training examples
  m = size(FeatureMatrix, 1);

  % The values for the cost formula
  H = zeros(m, 1);
  H = FeatureMatrix(1 : m, :) * Theta(2 : end)-Y;
  SquaredError = zeros(m, 1);
  SquaredError = power(H, 2);

  % Final error
  Error = sum(SquaredError) / (2 * m);
endfunction
