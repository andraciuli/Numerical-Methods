function [Adj] = get_adjacency_matrix (Labyrinth)
  [m, n] = size(Labyrinth);
  N = m*n + 2;
  Adj = zeros(N, N);
  for i = 1:m
        for j = 1:n
            code = dec2bin(Labyrinth(i, j), 4);
            node = (i-1)*n + j;

             % Check top neighbor
            if code(1) == '0' && i > 1
              north = node - n;
              Adj(node, north) = 1;
            endif

            % Check bottom neighbor
            if code(2) == '0' && i < m
                south = node + n;
                Adj(node, south) = 1;
            endif

            % Check right neighbor
            if code(3) == '0' && j < n
                east = node + 1;
                Adj(node, east) = 1;
            endif

            % Check left neighbor
            if code(4) == '0' && j > 1
                west = node - 1;
                Adj(node, west) = 1;
            endif

            % Check win state
            if code(1) == '0' && i == 1 || code(2) == '0' && i == m
                  win = N-1;
                  Adj(node, win) = 1;
            endif

            % Check lose state
            if code(4) == '0' && j == 1 || code(3) == '0' && j==n
              lose = N;
              Adj(node, lose) = 1;
            endif
            if node = N
              Adj(node, N) = 1;
            endif
            if node = N-1
              Adj(node, N-1) = 1;
            endif
        end
    end

endfunction
