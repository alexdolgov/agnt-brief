// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

interface IBEP20 is IERC20 {
    function decimals() external view returns (uint8);
}