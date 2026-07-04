// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { ERC4626, ERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract sCUSD is ERC4626 {
    constructor(address cusd) ERC4626(IERC20(cusd)) ERC20("Staked CUSD", "sCUSD") {}
}