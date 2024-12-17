function dataWithCRC = addCRC(data)
    % addCRC Adds a simple CRC checksum to data
    %   dataWithCRC = addCRC(data) appends a CRC checksum to the data.

    crcPolynomial = [1 0 1 1]; % Example CRC-3 polynomial
    crc = mod(conv(data.', crcPolynomial), 2);
    crc = crc(end-2:end).'; % Get last 3 bits
    dataWithCRC = [data; crc];
end
