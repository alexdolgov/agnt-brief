// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PIPS_DENOMINATOR } from "../Constants.sol";

import { FullMath } from "@uniswap/v4-core/src/libraries/FullMath.sol";

library PipsMath {
  function pipsOf(uint256 amount, uint256 pips) internal pure returns (uint256 fractionalAmount) {
    fractionalAmount = FullMath.mulDiv(amount, pips, PIPS_DENOMINATOR);
  }

  function toPips(uint256 numerator, uint256 denominator) internal pure returns (uint256 pipsFraction) {
    pipsFraction = FullMath.mulDiv(numerator, PIPS_DENOMINATOR, denominator);
  }
}
