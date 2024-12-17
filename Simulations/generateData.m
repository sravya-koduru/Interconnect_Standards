function data = generateData(numBits)
    % generateData Generates random binary data
    %   data = generateData(numBits) generates a column vector of random binary data.
    data = randi([0, 1], numBits, 1);
end
