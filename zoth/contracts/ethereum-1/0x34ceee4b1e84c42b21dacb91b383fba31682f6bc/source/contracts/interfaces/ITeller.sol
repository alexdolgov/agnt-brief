// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

interface ITeller {
    function buy(uint256 _amount) external returns (uint256);

    function sellFor(uint256 _amount, address _recipient) external returns (uint256);
}
