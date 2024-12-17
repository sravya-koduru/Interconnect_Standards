function isValid = checkCRC(dataWithCRC)
    % checkCRC Checks the CRC checksum
    %   isValid = checkCRC(dataWithCRC) returns true if CRC is valid.

    data = dataWithCRC(1:end-3);
    receivedCRC = dataWithCRC(end-2:end);
    crcPolynomial = [1 0 1 1];
    crc = mod(conv(data.', crcPolynomial), 2);
    computedCRC = crc(end-2:end).';
    isValid = isequal(receivedCRC, computedCRC);
end
