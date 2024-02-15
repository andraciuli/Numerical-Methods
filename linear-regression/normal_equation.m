function [Theta] = normal_equation(FeatureMatrix, Y, tol, iter)
  % FeatureMatrix -> the matrix with all training examples
  % Y -> the vector with all actual values
  % tol -> the learning rate
  % iter -> the number of iterations
  % tol -> the tolerance level for convergence of the conjugate gradient method

  % Theta -> the vector of weights

  % TODO: normal_equation implementation
  n = size(FeatureMatrix, 2);
  Theta = zeros(n, 1);
  for i = 1:iter
    Theta_new = inv(FeatureMatrix' * FeatureMatrix) * FeatureMatrix' * Y;
    Theta = Theta_new;
    if norm(Theta_new - Theta) < tol
      break;
    endif
  endfor
  Theta = [0; Theta];
endfunction
