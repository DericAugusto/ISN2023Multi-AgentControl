function [L] = Laplacien(n)
% Fonction Laplacien génère une matrice laplacienne pour un graphe aléatoire
% Inputs :
%   - n : nombre de nœuds dans le graphe
% Output :
%   - L : matrice laplacienne résultante

% Seuil pour déterminer les connexions dans le graphe
seuil = 0.6;

% Générer une matrice aléatoire de taille n x n
A = rand(n, n);

% Parcourir les éléments de la matrice
for i = 1:n
    for j = i:n
        % Si la valeur est supérieure ou égale au seuil, établir une connexion (valeur 1)
        if A(i, j) >= seuil
            A(i, j) = 1;
            A(j, i) = 1;
        else
            % Sinon, pas de connexion (valeur 0)
            A(i, j) = 0;
            A(j, i) = 0;
        end           
    end
    % Assurer que la diagonale est composée de zéros
    A(i, i) = 0;
end

% Initialiser une matrice diagonale nulle
D = zeros(n);

% Calculer la somme des connexions pour chaque nœud et les placer sur la diagonale de D
for i = 1:n
    for j = 1:n
        D(i, i) = D(i, i) + A(i, j);
    end
end

% Calculer la matrice laplacienne L en soustrayant A de D
L = D - A;

end
