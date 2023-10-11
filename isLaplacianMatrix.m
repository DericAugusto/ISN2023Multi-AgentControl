function isLaplacian = isLaplacianMatrix(matrix)
    % Vérifier si la matrice est carrée
    [rows, cols] = size(matrix);
    if rows ~= cols
        isLaplacian = false;
        return;
    end

    % Vérification de la symétrie de la matrice.
    if ~isequal(matrix, matrix')
        isLaplacian = false;
        return;
    end

    % Vérifier si la matrice satisfait aux propriétés de la matrice laplacienne
    isLaplacian = true;
    for i = 1:rows
        rowSum = sum(matrix(i,:));
        if i == 1
            if rowSum ~= 0
                isLaplacian = false;
                return;
            end
        else
            if rowSum < 0
                isLaplacian = false;
                return;
            end
        end
    end
end
