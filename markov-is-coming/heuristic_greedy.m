function [path] = heuristic_greedy (start_position, probabilities, Adj)
  % Initialize path with starting position
  path = start_position;
  current_position = start_position;

  while probabilities(current_position) != 1
      % Check if current position is a WIN state
      if current_position == size(Adj, 1)
          break;
      end

      % Compute probabilities of moving to neighboring cells
      neighbors = find(Adj(current_position, :) == 1);
      neighbor_probs = probabilities(neighbors);

      % Choose neighbor with highest probability
      [max_prob, max_idx] = max(neighbor_probs);
      next_position = neighbors(max_idx);

      % Add chosen neighbor to path and update current position
      path = [path, next_position];
      current_position = next_position;
  end
endfunction
