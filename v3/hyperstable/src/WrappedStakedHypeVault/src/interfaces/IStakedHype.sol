// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStakedHype is IERC20 {
    function totalShares() external view returns (uint256);

    function balanceToShareDecimals() external view returns (uint256);

    function sharesToBalance(uint256) external view returns (uint256);
}
