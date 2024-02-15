function [Theta] = gradient_descent(FeatureMatrix, Y, n, m, alpha, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % n -> the number of predictors
  % m -> the number of trainings
  % alpha -> the learning rate
  % iter -> the number of iterations

  % Theta -> the vector of weights
  Theta = zeros(n, 1); % initialize coefficients to zero
  for i = 1:iter
    H = FeatureMatrix * Theta; % hypothesis function
    Error = H - Y; % error between predicted and actual values
    Delta = (1/m) * (FeatureMatrix' * Error); % gradient
    Theta = Theta - alpha * Delta; % update coefficients
  endfor

endfunction
