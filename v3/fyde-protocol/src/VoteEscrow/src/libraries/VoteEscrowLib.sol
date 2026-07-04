// SPDX-License-Identifier: Unkown
// This contract is a modified version of the Pendle VeBalanceLib Library
// https://github.com/pendle-finance/pendle-core-v2-public/

pragma solidity ^0.8.19;

struct VeBalance {
  uint128 bias;
  uint128 slope;
}

struct LockedPosition {
  uint128 amount;
  uint128 expiry;
}

error ZeroSlope(uint128 bias, uint128 slope);

library VoteEscrowLib {
  uint128 internal constant MAX_LOCK_TIME = 104 weeks;

  function add(VeBalance memory a, VeBalance memory b) internal pure returns (VeBalance memory res) {
    res.bias = a.bias + b.bias;
    res.slope = a.slope + b.slope;
  }

  function sub(VeBalance memory a, VeBalance memory b) internal pure returns (VeBalance memory res) {
    res.bias = a.bias - b.bias;
    res.slope = a.slope - b.slope;
  }

  function sub(VeBalance memory a, uint128 slope, uint128 expiry)
    internal
    pure
    returns (VeBalance memory res)
  {
    res.slope = a.slope - slope;
    res.bias = a.bias - slope * expiry;
  }

  function isExpired(VeBalance memory a) internal view returns (bool) {
    return a.slope * uint128(block.timestamp) >= a.bias;
  }

  function getCurrentValue(VeBalance memory a) internal view returns (uint128) {
    if (isExpired(a)) return 0;
    return getValueAt(a, uint128(block.timestamp));
  }

  function getValueAt(VeBalance memory a, uint128 t) internal pure returns (uint128) {
    if (a.slope * t > a.bias) return 0;
    return a.bias - a.slope * t;
  }

  function getExpiry(VeBalance memory a) internal pure returns (uint128) {
    if (a.slope == 0) revert ZeroSlope(a.bias, a.slope);
    return a.bias / a.slope;
  }

  function convertToVeBalance(LockedPosition memory position)
    internal
    pure
    returns (VeBalance memory res)
  {
    res.slope = position.amount / MAX_LOCK_TIME;
    res.bias = res.slope * position.expiry;
  }
}
