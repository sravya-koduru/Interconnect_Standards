function decodedData = decode8b10b(encodedData)
    % decode8b10b Simplified 8b/10b decoder
    %   decodedData = decode8b10b(encodedData) decodes data encoded by encode8b10b.

    % Ensure data length is a multiple of 10
    padLength = mod(10 - mod(length(encodedData), 10), 10);
    dataPadded = [encodedData; zeros(padLength, 1)];
    
    % Reshape data into 10-bit words
    encodedBytes = reshape(dataPadded, 10, []).';
    
    % Extract the original 8 bits
    decodedBytes = encodedBytes(:, 1:8);
    
    % Flatten back to a column vector
    decodedData = decodedBytes.';
    decodedData = decodedData(:);
end
