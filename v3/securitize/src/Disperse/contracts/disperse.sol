pragma solidity ^0.8.27;

// SPDX-License-Identifier: MIT

import "./IERC20.sol";

contract Disperse {

    address public owner;
    address public disperser;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner.");
        _;
    }

    modifier onlyDisperser() {
        require(msg.sender == disperser, "Not the Disperser role.");
        _;
    }

    constructor() {
        owner = msg.sender;
        disperser = msg.sender;
    }

    function setDisperser (address newDisperser) public onlyOwner {
        disperser = newDisperser;
    }

    function setOwner (address newOwner) public onlyOwner {
        owner = newOwner;
    }

    function disperseToken(address tokenAddress, address payable[] calldata recipients, uint256[] calldata values) onlyDisperser external {
        IERC20 token = IERC20(tokenAddress);
        uint256 total = 0;
        for (uint256 i = 0; i < recipients.length; i++)
            total += values[i];
        require(token.transferFrom(msg.sender, address(this), total));
        for (uint256 i = 0; i < recipients.length; i++)
            require(token.transfer(recipients[i], values[i]));
    }
}
