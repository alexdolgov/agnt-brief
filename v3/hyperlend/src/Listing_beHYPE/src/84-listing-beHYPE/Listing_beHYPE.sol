// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EngineFlags} from '../interfaces/EngineFlags.sol';
import {IPool} from "../interfaces/IPool.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AaveV3Payload} from "hyperlend-core-new/src/contracts/extensions/v3-config-engine/AaveV3Payload.sol";
import {IAaveV3ConfigEngine} from 'hyperlend-core-new/src/contracts/extensions/v3-config-engine/IAaveV3ConfigEngine.sol';

/**
 * @title Add beHYPE to HyperLend Core market
 * @author HyperLend
 */
contract Listing_beHYPE is AaveV3Payload {
    using SafeERC20 for IERC20;

    address public constant wstHYPE = 0x94e8396e0869c9F2200760aF0621aFd240E1CF38;
    address public constant WRAPPED_HYPE = 0x5555555555555555555555555555555555555555;
    address public constant UETH   = 0xBe6727B535545C67d5cAa73dEa54865B92CF7907;
    address public constant UBTC   = 0x9FDBdA0A5e284c32744D2f17Ee5c74B284993463;
    address public constant USDe   = 0x5d3a1Ff2b6BAb83b63cd9AD0787074081a52ef34;
    address public constant USDT0  = 0xB8CE59FC3717ada4C02eaDF9682A9e934F625ebb;
    address public constant sUSDe  = 0x211Cc4DD073734dA055fbF44a2b4667d5E5fE5d2;
    address public constant USDhl  = 0xb50A96253aBDF803D85efcDce07Ad8becBc52BD5;
    address public constant kHYPE  = 0xfD739d4e423301CE9385c1fb8850539D657C296D;
    address public constant PT_kHYPE_13NOV2025 = 0x311dB0FDe558689550c68355783c95eFDfe25329;
    address public constant PT_sUSDe_25SEP2025 = 0xb7379d395F3c83952ad794896205f7E33E358735;
    address public constant USOL   = 0x068f321Fa8Fb9f0D135f290Ef6a3e2813e1c8A29;
    address public constant beHYPE = 0xd8FC8F0b03eBA61F64D08B0bef69d80916E5DdA9;

    /// @notice beHYPE token
    address public constant TOKEN = beHYPE;
    /// @notice 0.1 beHYPE token
    uint256 public constant SEED_AMOUNT = 1 * 1e18 / 10;
    /// @notice Redstone beHYPE/USD price feed adapter
    address public constant PRICE_FEED = 0x19067140d758a4adDD2d19B5C678E25062a17754;

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
            assetSymbol: 'beHYPE',
            priceFeed: PRICE_FEED,
            enabledToBorrow: EngineFlags.ENABLED,
            borrowableInIsolation: EngineFlags.DISABLED,
            withSiloedBorrowing: EngineFlags.DISABLED,
            flashloanable: EngineFlags.ENABLED,
            ltv: 59_00,
            liqThreshold: 74_00,
            liqBonus: 8_00,
            reserveFactor: 20_00,
            supplyCap: 22_653,
            borrowCap: 3_000,
            debtCeiling: 0,
            liqProtocolFee: 10_00,
            rateStrategyParams: IAaveV3ConfigEngine.InterestRateInputData({
                optimalUsageRatio: 75_00,
                baseVariableBorrowRate: 0,
                variableRateSlope1: 50,
                variableRateSlope2: 300_00
            })
        });

        return listings;
    }

    function getPoolContext() public pure override returns (IAaveV3ConfigEngine.PoolContext memory) {
        return IAaveV3ConfigEngine.PoolContext({networkName: 'HyperEVM', networkAbbreviation: 'HyperEvm'});
    }
}