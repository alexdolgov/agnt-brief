// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IERC20 {
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

contract BatchDistributor{
    IERC20 public immutable USDB = IERC20(0x4300000000000000000000000000000000000003);

    function batchDistributeUSDB(address[] calldata recipients, uint256[] calldata values) external {
        require(recipients.length == values.length, "Recipients and values must have the same length");
        for (uint256 i = 0; i < recipients.length; i++) {
            require(USDB.transferFrom(msg.sender, recipients[i], values[i]));
        }
    }
}
