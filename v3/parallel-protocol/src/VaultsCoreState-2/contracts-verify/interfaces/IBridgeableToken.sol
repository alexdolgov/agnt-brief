// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface IBridgeableToken {
  function getPrincipalTokenAmountMinted() external view returns (uint256);
}
