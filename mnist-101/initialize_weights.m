function [matrix] = initialize_weights(L_prev, L_next)
  % L_prev -> the number of units in the previous layer
  % L_next -> the number of units in the next layer

  % matrix -> the matrix with random values

  % TODO: initialize_weights implementation
    % Calculate epsilon
    epsilon = sqrt(6) / sqrt(L_prev + L_next);

    % Initialize matrix with random values in (-epsilon, epsilon)
    matrix = 2 * epsilon * rand(L_next, L_prev + 1) - epsilon;
end
