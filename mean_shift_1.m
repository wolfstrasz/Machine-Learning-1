function [A_shift] = mean_shift_1( A )
    %MEAN_SHIFT_1 Labourious centering of each column using
    % a for loop
    [I, J] = size(A);
    mu = mean(A, 1); % compute the mean of each column
    A_shift = A;     % (lazily) creates a copy
    for i = 1:I      % for each row
        for j = 1:J  % for each column
            A_shift(i,j) = A_shift(i,j) - mu(j);
        end
    end
end

