//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

contract MappingLog {
    // owner keep mapping log onchain
    // using keccak256 to encode data into bytes32
    mapping(address => mapping(bytes32 => bytes32)) _data;

    event Mapping(address owner, bytes32 from, bytes32 to);

    constructor() {}

    function save(bytes32 from, bytes32 to) external {
        address _owner = msg.sender;
        require(_data[_owner][from] == "", "Mapping Already Existed");
        require(to != "", "Mapping to Null");

        _data[_owner][from] = to;
        emit Mapping(_owner, from, to);
    }

    function get(address owner, bytes32 from) external view returns (bytes32) {
        return _data[owner][from];
    }
}
