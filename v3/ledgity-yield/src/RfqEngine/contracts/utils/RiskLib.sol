// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Constants} from "./Constants.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

library RiskLib {
    // Computes health factor in basis points from collateral and debt (USD WAD).
    // Returns max uint16 when debt is zero. Uses mulDiv to avoid intermediate overflow.
    function hfBps(uint256 collUSD, uint256 debtUSD) internal pure returns (uint16) {
        if (debtUSD == 0) return type(uint16).max;
        uint256 res = Math.mulDiv(collUSD, Constants.BPS, debtUSD);
        if (res > type(uint16).max) return type(uint16).max;
        return uint16(res);
    }
}
