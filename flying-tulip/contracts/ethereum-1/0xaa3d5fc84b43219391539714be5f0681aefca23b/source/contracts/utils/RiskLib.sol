// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Constants} from "./Constants.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

library RiskLib {
    // Computes health factor in basis points from equity and maintenance requirement (USD-WAD).
    // Returns max uint16 when maintenance is zero. Uses mulDiv to avoid intermediate overflow.
    function hfBps(uint256 equityUSDWad, uint256 maintUSDWad) internal pure returns (uint16) {
        if (maintUSDWad == 0) return type(uint16).max;
        uint256 res = Math.mulDiv(equityUSDWad, Constants.BPS, maintUSDWad);
        if (res > type(uint16).max) return type(uint16).max;
        return uint16(res);
    }
}
