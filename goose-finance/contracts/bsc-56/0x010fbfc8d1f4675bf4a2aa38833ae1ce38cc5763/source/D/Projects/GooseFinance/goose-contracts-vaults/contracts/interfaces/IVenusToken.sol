// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "./IVToken.sol";

interface IVenusToken is IVToken {
    function underlying() external returns (address);
    function mint(uint256 mintAmount) external returns (uint256);
}