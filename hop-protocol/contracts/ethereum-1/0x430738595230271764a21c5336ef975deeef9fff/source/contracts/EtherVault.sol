//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.2;

contract EtherVault {

    address immutable public feeManager;

    constructor() {
        feeManager = msg.sender;
    }

    receive() external payable {}

    function transfer(address to, uint256 amount) external {
        require(msg.sender == feeManager, "EtherVault: only fee manager can withdraw");
        (bool success, ) = to.call{value: amount}("");
        require(success, "EtherVault: transfer failed");
    }
}
