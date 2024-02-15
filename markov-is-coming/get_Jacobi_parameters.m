function [G, c] = get_Jacobi_parameters (Link)

  [m, n] = size(Link);
  G = zeros(m - 2, n - 2);
  c = zeros(m - 2, 1);

  for i = 1:m -2
    for j = 1:n -2
      if Link(i, j) != 0
        G(i, j) = Link(i, j);
      endif
     end
     if Link(i, n - 1) != 0
       c(i, 1) = Link(i, n - 1);
     endif
  end

 endfunction
