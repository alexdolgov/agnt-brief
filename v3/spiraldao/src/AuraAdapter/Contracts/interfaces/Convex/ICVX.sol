// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

interface ICVX is IERC20 {
    function reductionPerCliff() external view returns (uint256);
    function totalCliffs() external view returns (uint256);
    function maxSupply() external view returns (uint256);
}