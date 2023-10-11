function A = genererA(n)
% gerarMatrizAdjacencia - Génère une matrice d'adjacence pour un graphe aléatoire de N éléments.
%
% Entrée :
%   n - Le nombre d'éléments (nœuds) dans le graphe.
%
% Sortie :
%   A - La matrice d'adjacence d'un graphe aléatoire.

A = zeros(n);

% Remplissez la matrice avec des connexions aléatoires entre les nœuds
for i = 1:n
    for j = i+1:n
        % Génère une valeur aléatoire (0 ou 1) pour représenter la présence ou l'absence d'une arête
        A(i, j) = randi([0, 1]);
        % Comme la matrice est symétrique, définissez la même valeur pour la position opposée
        A(j, i) = A(i, j);
    end
end

end
