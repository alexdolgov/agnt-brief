// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import { BaseAIDollarAlpha } from "./BaseAIDollarAlpha.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract AIDollarAlphaUSD1 is BaseAIDollarAlpha {
    constructor(
        IERC20 asset,
        address admin,
        uint256 maxDepositLimit
    )
        BaseAIDollarAlpha(asset, admin, maxDepositLimit, "AI Dollar Alpha USD1", "AIDaUSD1")
    { }

    function _earn(uint256) internal pure override {
        revert("Not implemented");
    }

    function _unearn(uint256) internal pure override {
        revert("Not implemented");
    }

    function _claimProfit() internal pure override {
        revert("Not implemented");
    }
}
