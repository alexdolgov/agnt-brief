// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title HelloAccountable
/// @notice Simple test contract to verify Etherscan verification process
contract HelloAccountable {
    string public greeting;
    address public owner;
    uint256 public createdAt;

    constructor(string memory _greeting, address _owner) {
        greeting = _greeting;
        owner = _owner;
        createdAt = block.timestamp;
    }

    function setGreeting(string memory _greeting) external {
        require(msg.sender == owner, "Only owner can set greeting");
        greeting = _greeting;
    }

    function getInfo() external view returns (string memory, address, uint256) {
        return (greeting, owner, createdAt);
    }
}
