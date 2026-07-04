// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IVaultExplorer } from "src/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { Errors } from "src/utils/Errors.sol";
import { ScalingHelpers } from "src/external/balancer/v3/ScalingHelpers.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";

import {
    BalancerBaseStableMathOracle, ISystemRegistry
} from "src/oracles/providers/base/BalancerBaseStableMathOracle.sol";

/// @title An StableMath based oracle for Balancer V3 spot pricing
contract BalancerV3StableMathOracle is BalancerBaseStableMathOracle {
    /// @notice Instance of Balancer V3 Vault Explorer.  Explorer is used to access state of main Vault contract
    IVaultExplorer public immutable vaultExplorer;

    /// @param pool Address of pool being used for pricing
    /// @param balancesRaw Current raw balances of pool
    struct BalancerV3StableOracleData {
        address pool;
        uint256[] balancesRaw;
        uint256[] decimalScalingFactors;
        uint256[] rateScalingFactors;
        uint256[] unwrapRates;
        uint256[] tokenOnes;
        uint256[] unwrappedTokenOnes;
    }

    constructor(IVaultExplorer _vaultExplorer, ISystemRegistry _registry) BalancerBaseStableMathOracle(_registry) {
        Errors.verifyNotZero(address(_vaultExplorer), "_vaultExplorer");

        vaultExplorer = _vaultExplorer;
    }

    function getDescription() external pure override returns (string memory) {
        return "balV3StableMath";
    }

    /// @notice Scale the price to the 4626 underlying asset terms
    /// @return Raw value, in this context a price without rate and decimal scaling applied
    function _downscalePrice(
        SpotCalcState memory swapState,
        IERC20[] memory unwrappedTokens,
        uint256[] memory scalingFactors,
        bytes memory extraData
    ) internal view virtual override returns (uint256) {
        BalancerV3StableOracleData memory decodedData = abi.decode(extraData, (BalancerV3StableOracleData));

        // This gets us a price in terms of the highest level wrapped asset
        uint256 scaledDownPrice = super._downscalePrice(swapState, unwrappedTokens, scalingFactors, extraData);

        // Our goal here is to convert that price in the one-level-down underlying asset in the case of
        // a wrapped asset. Depending on the asset, Balancers rates can represent more than one asset wrapping
        // such as the case with Aave wstETH which is to get into stETH terms. We'd just want wstETH terms

        // slither-disable-start divide-before-multiply
        uint256 unwrappedInput = swapState.unscaledSwapAmount * decodedData.unwrapRates[uint256(swapState.tokenIndex)]
            / decodedData.tokenOnes[uint256(swapState.tokenIndex)];

        uint256 unwrappedOutput = scaledDownPrice * decodedData.unwrapRates[uint256(swapState.quoteTokenIndex)]
            / decodedData.tokenOnes[uint256(swapState.quoteTokenIndex)];

        uint256 ret = decodedData.unwrappedTokenOnes[uint256(swapState.tokenIndex)] * unwrappedOutput / unwrappedInput;
        // slither-disable-end divide-before-multiply

        return ret;
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getLiveBalancesAndScalingFactors(
        bytes memory data
    ) internal pure override returns (uint256[] memory liveBalances, uint256[] memory scalingFactors) {
        BalancerV3StableOracleData memory decodedData = abi.decode(data, (BalancerV3StableOracleData));

        uint256[] memory balancesRaw = decodedData.balancesRaw;

        uint256 len = balancesRaw.length;
        Errors.verifyArrayLengths(len, decodedData.decimalScalingFactors.length, "balances+decimalScalingFactors");

        liveBalances = new uint256[](len);
        scalingFactors = new uint256[](len);
        for (uint256 i = 0; i < len; ++i) {
            uint256 decScaling = decodedData.decimalScalingFactors[i];
            uint256 rateScaling = decodedData.rateScalingFactors[i];

            // Last saved raw balances are the updated balances for the pool before an operation.  Cannot use last
            // saved live balances because rates may have updated since last operation

            liveBalances[i] = ScalingHelpers.toScaled18ApplyRateRoundDown(balancesRaw[i], decScaling, rateScaling);
            scalingFactors[i] = decScaling * rateScaling;
        }
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getTotalSupply(
        address pool
    ) internal view override returns (uint256) {
        return IERC20(pool).totalSupply();
    }

    /// @inheritdoc BalancerBaseStableMathOracle
    function _getPoolTokens(
        address pool
    ) internal view override returns (IERC20[] memory, IERC20[] memory, uint256[] memory, bytes memory) {
        // slither-disable-next-line unused-return
        (IERC20[] memory tokens,, uint256[] memory balancesRaw,) = vaultExplorer.getPoolTokenInfo(pool);

        uint256 len = tokens.length;

        (uint256[] memory decimalScalingFactors, uint256[] memory rateScalingFactors) =
            vaultExplorer.getPoolTokenRates(pool);

        BalancerV3StableOracleData memory extraData = BalancerV3StableOracleData({
            pool: pool,
            balancesRaw: balancesRaw,
            decimalScalingFactors: decimalScalingFactors,
            rateScalingFactors: rateScalingFactors,
            unwrapRates: new uint256[](len),
            tokenOnes: new uint256[](len),
            unwrappedTokenOnes: new uint256[](len)
        });

        uint256[] memory unwrappedBalances = new uint256[](len);

        IERC20[] memory unwrappedTokens = new IERC20[](len);
        for (uint256 i = 0; i < len;) {
            unwrappedTokens[i] = tokens[i];
            address bufferAsset = vaultExplorer.getBufferAsset(IERC4626(address(tokens[i])));

            uint256 tokenOne = 10 ** IERC4626(address(tokens[i])).decimals();
            extraData.tokenOnes[i] = tokenOne;

            if (bufferAsset != address(0)) {
                extraData.unwrapRates[i] = IERC4626(address(tokens[i])).convertToAssets(tokenOne);
                unwrappedTokens[i] = IERC20(bufferAsset);
                extraData.unwrappedTokenOnes[i] = 10 ** IERC20Metadata(address(unwrappedTokens[i])).decimals();
                unwrappedBalances[i] = balancesRaw[i] * extraData.unwrapRates[i] / tokenOne;
            } else {
                extraData.unwrapRates[i] = tokenOne;
                extraData.unwrappedTokenOnes[i] = tokenOne;
                unwrappedBalances[i] = balancesRaw[i];
            }

            unchecked {
                ++i;
            }
        }

        return (tokens, unwrappedTokens, unwrappedBalances, abi.encode(extraData));
    }
}
