// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EngineFlags} from '../interfaces/EngineFlags.sol';
import {IPool} from "../interfaces/IPool.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AaveV3Payload} from "hyperlend-core-new/src/contracts/extensions/v3-config-engine/AaveV3Payload.sol";
import {IAaveV3ConfigEngine} from 'hyperlend-core-new/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Add wHYPE to HyperLend Core market
 * @author HyperLend
 */
contract Listing_wHYPE is AaveV3Payload {
  using SafeERC20 for IERC20;

  /// @notice wHYPE token
  address public constant TOKEN = 0x5555555555555555555555555555555555555555;
  /// @notice 1 wHYPE token
  uint256 public constant SEED_AMOUNT = 1 * 1e18 / 10;
  /// @notice Pyth HYPE/USD price feed adapter
  address public constant PRICE_FEED = 0xdE8d22d022261c9Fb4b5338DA8ceFb029175D0F5;

  address public constant POOL = 0x00A89d7a5A02160f20150EbEA7a2b5E4879A1A8b;
  address public constant COLLECTOR = 0xA9A7e0E91689C49bf9F2A15a768cAebBA6A5EEC5;
  address public constant CUSTOM_CONFIG_ENGINE = 0x3e6c029ae09A851A958172605EB77e08E3631F0e;

  constructor() AaveV3Payload(IAaveV3ConfigEngine(CUSTOM_CONFIG_ENGINE)) {}

  function _postExecute() internal override {
    IERC20(TOKEN).forceApprove(POOL, SEED_AMOUNT);
    IPool(POOL).supply(TOKEN, SEED_AMOUNT, COLLECTOR, 0);
  }

  function newListings() public pure override returns (IAaveV3ConfigEngine.Listing[] memory) {
    IAaveV3ConfigEngine.Listing[] memory listings = new IAaveV3ConfigEngine.Listing[](1);

    listings[0] = IAaveV3ConfigEngine.Listing({
      asset: TOKEN,
      assetSymbol: 'WHYPE',
      priceFeed: PRICE_FEED,
      enabledToBorrow: EngineFlags.ENABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 60_00,
      liqThreshold: 75_00,
      liqBonus: 10_00,
      reserveFactor: 20_00,
      supplyCap: 1_000,
      borrowCap: 1_000,
      debtCeiling: 0,
      liqProtocolFee: 10_00,
      rateStrategyParams: IAaveV3ConfigEngine.InterestRateInputData({
        optimalUsageRatio: 45_00,
        baseVariableBorrowRate: 0,
        variableRateSlope1: 10_00,
        variableRateSlope2: 300_00
      })
    });

    return listings;
  }

  function getPoolContext() public pure override returns (IAaveV3ConfigEngine.PoolContext memory) {
    return IAaveV3ConfigEngine.PoolContext({networkName: 'HyperEVM', networkAbbreviation: 'HyperEvm'});
  }
}