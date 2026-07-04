// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EngineFlags} from '../interfaces/EngineFlags.sol';
import {IPool} from "../interfaces/IPool.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AaveV3Payload} from "hyperlend-core-new/src/contracts/extensions/v3-config-engine/AaveV3Payload.sol";
import {IAaveV3ConfigEngine} from 'hyperlend-core-new/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Add wstHYPE to HyperLend Core market
 * @author HyperLend
 */
contract Listing_wstHYPE is AaveV3Payload {
  using SafeERC20 for IERC20;

  /// @notice wstHYPE token
  address public constant TOKEN = 0x94e8396e0869c9F2200760aF0621aFd240E1CF38;
  /// @notice 0.1 wstHYPE token
  uint256 public constant SEED_AMOUNT = 1 * 1e18 / 10;
  /// @notice Pyth wstHYPE/USD price feed adapter
  address public constant PRICE_FEED = 0x92E86F458CA07351CC31f9DbeEb55715FCF9C272;

  address public constant POOL = 0x036Ad31A37b747e39322878eD851711507f13b1b;
  address public constant COLLECTOR = 0xA0Fc77365A4d1c02e7F2886200F7176f7E98544D;
  address public constant CUSTOM_CONFIG_ENGINE = 0x653C41dB20e31dd9A6284d58fB5DB1684Dc66391;

  constructor() AaveV3Payload(IAaveV3ConfigEngine(CUSTOM_CONFIG_ENGINE)) {}

  function _postExecute() internal override {
    IERC20(TOKEN).forceApprove(POOL, SEED_AMOUNT);
    IPool(POOL).supply(TOKEN, SEED_AMOUNT, COLLECTOR, 0);
  }

  function newListings() public pure override returns (IAaveV3ConfigEngine.Listing[] memory) {
    IAaveV3ConfigEngine.Listing[] memory listings = new IAaveV3ConfigEngine.Listing[](1);

    listings[0] = IAaveV3ConfigEngine.Listing({
      asset: TOKEN,
      assetSymbol: 'wstHYPE',
      priceFeed: PRICE_FEED,
      enabledToBorrow: EngineFlags.ENABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 50_00,
      liqThreshold: 65_00,
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