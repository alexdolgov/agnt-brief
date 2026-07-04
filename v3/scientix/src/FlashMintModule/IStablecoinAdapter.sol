// SPDX-License-Identifier: AGPL-3.0-or-later
/**
  ∩~~~~∩ 
  ξ ･×･ ξ 
  ξ　~　ξ 
  ξ　　 ξ 
  ξ　　 “~～~～〇 
  ξ　　　　　　 ξ 
  ξ ξ ξ~～~ξ ξ ξ 
　 ξ_ξξ_ξ　ξ_ξξ_ξ
Alpaca Fin Corporation
*/

pragma solidity 0.6.12;

import "./IBookKeeper.sol";
import "./IStablecoin.sol";

interface IStablecoinAdapter {
  function bookKeeper() external returns (IBookKeeper);

  function stablecoin() external returns (IStablecoin);

  function deposit(
    address positionAddress,
    uint256 wad,
    bytes calldata data
  ) external payable;

  function withdraw(
    address positionAddress,
    uint256 wad,
    bytes calldata data
  ) external;
}
