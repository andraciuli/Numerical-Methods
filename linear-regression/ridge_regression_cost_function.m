function [Error] = ridge_regression_cost_function(Theta, Y, FeatureMatrix, lambda)
  % Theta -> the vector of weights
  % Y -> the vector with all actual values
  % FeatureMatrix -> the matrix with all training examples
  % lambda -> regularization parameter that controls the amount of
  %           shrinkage applied to the regression coefficients

  % Error -> the error of the regularized cost function

  % TODO: ridge_regression_cost_function implementation

  m = size(FeatureMatrix, 1);
  H = zeros(m, 1);
  H = FeatureMatrix(1:m, :) * Theta(2 : end) - Y;
  SquaredError = zeros(m, 1);
  SquaredError = power(H, 2);
  Error = sum(SquaredError) /(2 * m) + lambda * sum(power(Theta, 2));
endfunction
