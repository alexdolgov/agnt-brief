// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract ReporterData {
    struct Datum {
        uint64 timestamp;
        uint224 value;
    }

    ///@notice The event emitted when a source writes to its storage
    event Write(address indexed source, string key, uint64 timestamp, uint224 value);

    ///@notice The event emitted when the timestamp on a price is invalid and it is not written to storage
    event NotWritten(uint64 priorTimestamp, uint256 messageTimestamp, uint256 blockTimestamp);

    mapping(address => mapping(string => Datum)) private data;

    function putPriceData(address source_, bytes calldata message) internal returns (string memory) {
        (uint64 timestamp, string memory key, uint224 value) = abi.decode(message, (uint64, string, uint224));
        Datum storage prior = data[source_][key];
        if (timestamp > prior.timestamp && timestamp < block.timestamp + 60 minutes && source_ != address(0)) {
            data[source_][key] = Datum(timestamp, value);
            emit Write(source_, key, timestamp, value);
        } else {
            emit NotWritten(prior.timestamp, timestamp, block.timestamp);
        }
        return key;
    }

    function getPriceData(address source_, string memory key) internal view returns (uint256) {
        return data[source_][key].value;
    }
}
