function [Link] = get_link_matrix (Labyrinth)
	[m, n] = size(Labyrinth);
  N = m*n + 2;
  Link = zeros(N, N);
  Adj = get_adjacency_matrix(Labyrinth);
  for i = 1:N
    for j = 1:N
      if Adj(i,j) == 1
        Link(i,j) = 1 / sum(Adj(i, :));
      end
    end
  end
endfunction
