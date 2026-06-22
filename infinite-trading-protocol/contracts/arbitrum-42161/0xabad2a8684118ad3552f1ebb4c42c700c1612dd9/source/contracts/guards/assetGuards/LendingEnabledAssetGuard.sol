//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// Copyright (c) 2021 dHEDGE DAO
//
// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {IAaveProtocolDataProvider} from "../../interfaces/aave/IAaveProtocolDataProvider.sol";
import {IGovernance} from "../../interfaces/IGovernance.sol";
import {IPoolFactory} from "../../interfaces/IPoolFactory.sol";
import {IPoolManagerLogic} from "../../interfaces/IPoolManagerLogic.sol";
import {ERC20Guard} from "./ERC20Guard.sol";

/// @title Lending/Borrowing enabled token asset guard eg Aave
/// @dev Asset type = 4
contract LendingEnabledAssetGuard is ERC20Guard {
  /// @notice Checks that asset can be removed from supported pool assets
  /// @dev Cannot remove asset if it's in Aave
  /// @dev Additional lending / borrowing protocol checks can be added in the future
  function removeAssetCheck(address pool, address asset) public view virtual override {
    super.removeAssetCheck(pool, asset);

    address factory = IPoolManagerLogic(pool).factory();
    address governance = IPoolFactory(factory).governanceAddress();

    _checkBalance(pool, asset, IGovernance(governance).nameToDestination("aaveProtocolDataProviderV3"));
  }

  /// @dev Check AAVE lending and borrowing balances. Returns address(0) if it's not supported in aave
  function _checkBalance(address pool, address asset, address aaveProtocolDataProvider) internal view {
    if (aaveProtocolDataProvider != address(0)) {
      (address aToken, , address variableDebtToken) = IAaveProtocolDataProvider(aaveProtocolDataProvider)
        .getReserveTokensAddresses(asset);

      if (variableDebtToken != address(0))
        require(IERC20(variableDebtToken).balanceOf(pool) == 0, "repay Aave debt first");
      if (aToken != address(0)) require(IERC20(aToken).balanceOf(pool) == 0, "withdraw Aave collateral first");
    }
  }
}
