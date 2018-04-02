function [ A_shift ] = mean_shift_2( A )
    %MEAN_SHIFT_2 We can take the mean row off each row
    % in one operation per row.
    [I, J] = size(A);
    mu = mean(A, 1); % compute the mean of each column
    A_shift = A;
    for i = 1:I      % for each row
        A_shift(i,:) = A_shift(i,:) - mu;
    end
end