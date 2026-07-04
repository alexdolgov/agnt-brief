// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EngineFlags} from '../interfaces/EngineFlags.sol';
import {IPool} from "../interfaces/IPool.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AaveV3Payload} from "hyperlend-core-new/src/contracts/extensions/v3-config-engine/AaveV3Payload.sol";
import {IAaveV3ConfigEngine} from 'hyperlend-core-new/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Add assets to Aviya Market
 * @author HyperLend
 */
contract Listing_1 is AaveV3Payload {
  using SafeERC20 for IERC20;

  address public constant HiHYPE = 0x9437D08f66B70f6dcc4304b535c3aADb3A6bad01;
  uint256 public constant HiHYPE_SEED_AMOUNT = 1e6;
  address public constant HiHYPE_PRICE_FEED = 0x29E3f9Cc1936466B7E3470A08BD68E4DD8B03671;

  address public constant USDH = 0x4953EB031c232BdDe9dF8f92b43c77606c654dE7;
  uint256 public constant USDH_SEED_AMOUNT = 1e6;
  address public constant USDH_PRICE_FEED = 0xE18aAD6733D1db21e19cb83B697082D3d4eE5170;

  address public constant POOL = 0x50b3826A8621C5dA283782300802d8346b810C36;
  address public constant COLLECTOR = 0xe3165B5D0a0FE9bEcAdFB959e3EfdB6DC4614Ba4;
  address public constant CUSTOM_CONFIG_ENGINE = 0x3347F48c5094014e7600D985a1e468D9811401B2;
  address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

  constructor() AaveV3Payload(IAaveV3ConfigEngine(CUSTOM_CONFIG_ENGINE)) {}

  function _postExecute() internal override {
    IERC20(HiHYPE).forceApprove(POOL, HiHYPE_SEED_AMOUNT);
    IPool(POOL).supply(HiHYPE, HiHYPE_SEED_AMOUNT, DEAD, 0);

    IERC20(USDH).forceApprove(POOL, USDH_SEED_AMOUNT);
    IPool(POOL).supply(USDH, USDH_SEED_AMOUNT, DEAD, 0);
  }

  function newListings() public pure override returns (IAaveV3ConfigEngine.Listing[] memory) {
    IAaveV3ConfigEngine.Listing[] memory listings = new IAaveV3ConfigEngine.Listing[](2);

    listings[0] = IAaveV3ConfigEngine.Listing({
      asset: HiHYPE,
      assetSymbol: 'HiHYPE-Aviya-1',
      priceFeed: HiHYPE_PRICE_FEED,
      enabledToBorrow: EngineFlags.DISABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 63_00,
      liqThreshold: 80_00,
      liqBonus: 15_00,
      reserveFactor: 10, //0.1%
      supplyCap: 200_000,
      borrowCap: 1,
      debtCeiling: 0,
      liqProtocolFee: 10_00,
      rateStrategyParams: IAaveV3ConfigEngine.InterestRateInputData({
        optimalUsageRatio: 45_00,
        baseVariableBorrowRate: 0,
        variableRateSlope1: 10_00,
        variableRateSlope2: 300_00
      })
    });

    listings[1] = IAaveV3ConfigEngine.Listing({
      asset: USDH,
      assetSymbol: 'USDH-Aviya-1',
      priceFeed: USDH_PRICE_FEED,
      enabledToBorrow: EngineFlags.ENABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 0,
      liqThreshold: 0,
      liqBonus: 0,
      reserveFactor: 10, //0.1%
      supplyCap: 1,
      borrowCap: 1,
      debtCeiling: 0,
      liqProtocolFee: 10_00,
      rateStrategyParams: IAaveV3ConfigEngine.InterestRateInputData({
        optimalUsageRatio: 90_00,
        baseVariableBorrowRate: 4_00,
        variableRateSlope1: 0,
        variableRateSlope2: 0
      })
    });

    return listings;
  }

  function getPoolContext() public pure override returns (IAaveV3ConfigEngine.PoolContext memory) {
    return IAaveV3ConfigEngine.PoolContext({networkName: 'HyperEVM', networkAbbreviation: 'HyperEvm'});
  }
}