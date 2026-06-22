// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Unmasker {
    mapping(address => bool) private unmasked;

    modifier onlySelf() {
        require(msg.sender == tx.origin, "Only EOA can call this function");
        _;
    }

    function mask() external onlySelf {
        require(unmasked[msg.sender] == false, "Must be unmasked to mask");
        unmasked[msg.sender] = false;
        emit MaskStatusChanged(msg.sender, false);
    }

    function unmask() external onlySelf {
        require(unmasked[msg.sender] == false, "Must be masked to unmask");
        unmasked[msg.sender] = true;
        emit MaskStatusChanged(msg.sender, true);
    }

    function isUnmasked(address[] calldata addresses) external view returns (bool[] memory) {
        bool[] memory results = new bool[](addresses.length);
        for (uint i = 0; i < addresses.length; i++) {
            results[i] = unmasked[addresses[i]];
        }
        return results;
    }

    event MaskStatusChanged(address indexed user, bool isUnMasked);
}