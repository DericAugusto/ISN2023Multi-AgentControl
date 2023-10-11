function D = createDmatrix(A)
% crée une matrice D diagonale en additionnant les lignes de la matrice A
    matrixSize = size(A,1);
    D = zeros(matrixSize);

    for d = 1:matrixSize
        D(d,d) = sum(A(d,:));
    end
end
