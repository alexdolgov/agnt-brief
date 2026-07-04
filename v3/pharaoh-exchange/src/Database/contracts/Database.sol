// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Database is Ownable {
    address public receiver;

    mapping(address => bool) public sybilList;

    constructor(address _receiver) Ownable(msg.sender) {
        receiver = _receiver;
    }

    function isSybil(address user) external view returns (bool) {
        return sybilList[user];
    }

    function getReceiver() external view returns (address) {
        return receiver;
    }

    function setReceiver(address _receiver) external onlyOwner {
        receiver = _receiver;
    }

    function addSybil(address _sybil) external onlyOwner {
        sybilList[_sybil] = true;
    }

    function removeSybil(address _sybil) external onlyOwner {
        sybilList[_sybil] = false;
    }
}
