// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ISpotPriceOracle } from "src/interfaces/oracles/ISpotPriceOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { Roles } from "src/libs/Roles.sol";
import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { RootPriceOracle } from "src/oracles/RootPriceOracle.sol";

/// @title Spot price oracle for ERC4626 tokens that don't have a set pool
/// @dev Treats spot price as a set deviation from safe
contract ERC4626NonLPSpotRangeOracle is SystemComponent, SecurityBase, ISpotPriceOracle {
    /// =====================================================
    /// Public Vars
    /// =====================================================
    /// @notice The pool to lookup a spot price from for a given base asset
    mapping(address => LookupInfo) public tokenLookupPools;

    /// @notice The asset to use to query price for instead of base asset
    mapping(address => address) public remapLookup;

    /// =====================================================
    /// Structs
    /// =====================================================

    /// @param deviation Set bps out of 10000 to move safe price by
    /// @param remapAsset Whether to query safe price a different asset
    struct LookupInfo {
        uint96 deviationBps;
        uint8 remapAsset;
    }

    /// =====================================================
    /// Errors
    /// =====================================================

    error TokenMismatch(address token1, address token2);

    /// =====================================================
    /// Events
    /// =====================================================

    event TokenLookupPoolRegistered(address token, uint256 deviationBps);
    event TokenLookupPoolUnregistered(address token);

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) { }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Register a pool to spot price a base asset through
    /// @param baseAsset Underlying asset of a 4626 pool to lookup price for
    /// @param deviationBps Set bps out of 10000 to move safe price by
    /// @param mapLookup The asset we get the price for instead of baseAsset. Accepts 0
    function registerPool(
        address baseAsset,
        uint256 deviationBps,
        address mapLookup
    ) external hasRole(Roles.ORACLE_MANAGER) {
        Errors.verifyNotZero(baseAsset, "baseAsset");
        Errors.verifyNotZero(deviationBps, "deviationBps");

        if (deviationBps > 100) {
            revert Errors.InvalidParam("deviationBps");
        }

        emit TokenLookupPoolRegistered(baseAsset, deviationBps);

        tokenLookupPools[baseAsset] =
            LookupInfo({ deviationBps: uint96(deviationBps), remapAsset: mapLookup == address(0) ? 0 : 1 });
        if (mapLookup != address(0)) {
            remapLookup[baseAsset] = mapLookup;
        }
    }

    /// @notice Register a pool to spot price a base asset through
    /// @param baseAsset Underlying asset of a 4626 pool to lookup price for
    function unregisterPool(
        address baseAsset
    ) external hasRole(Roles.ORACLE_MANAGER) {
        Errors.verifyNotZero(baseAsset, "baseAsset");

        LookupInfo memory lookup = tokenLookupPools[baseAsset];
        Errors.verifyNotZero(lookup.deviationBps, "existingPool");

        emit TokenLookupPoolUnregistered(baseAsset);

        if (lookup.remapAsset == 1) {
            delete remapLookup[baseAsset];
        }
        delete tokenLookupPools[baseAsset];
    }

    /// @inheritdoc ISpotPriceOracle
    function getSpotPrice(
        address token,
        address pool,
        address requestedQuoteToken
    ) external returns (uint256 price, address actualQuoteToken) {
        // If the token and pool match, then we are getting the quote in terms of the token itself.
        // Otherwise it'll be the base asset
        (price, actualQuoteToken,) = _getSpotPrice(token, pool, requestedQuoteToken, token == pool);
    }

    /// @inheritdoc ISpotPriceOracle
    function getSafeSpotPriceInfo(
        address pool,
        address lpToken,
        address quoteToken
    ) external returns (uint256 totalSupply, ReserveItemInfo[] memory reserves) {
        // Our ERC20 and ERC4626 base destinations have a matching pool and token
        _ensureTokenMatch(lpToken, pool);

        totalSupply = IERC4626(lpToken).totalSupply();

        // Gets the tokens baseAsset in terms of the requestedQuote with false flag
        (uint256 price,, address baseAsset) = _getSpotPrice(lpToken, pool, quoteToken, false);

        reserves = new ReserveItemInfo[](1);
        reserves[0] = ReserveItemInfo({
            token: baseAsset,
            reserveAmount: IERC4626(lpToken).totalAssets(),
            rawSpotPrice: price,
            actualQuoteToken: quoteToken
        });
    }

    /// @inheritdoc ISpotPriceOracle
    function getDescription() external pure override returns (string memory) {
        return "4626NonLpSpotRange";
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _ensureTokenMatch(
        address token1,
        address token2
    ) private pure {
        if (token1 != token2) {
            revert TokenMismatch(token1, token2);
        }
    }

    /**
     * @notice Retrieve the spot price for a token in a specified quote currency utilizing a specific liquidity pool
     * @dev The function will attempt to retrieve the price in the requested quote currency,
     *      but might return a price in an alternative quote currency if the requested one isn't available.
     *      It's the caller's responsibility to handle the potentially different returned quote currency.
     * @param token The token to get the spot price of
     * @param pool Ignored. Must match token.
     * @param requestedQuoteToken The desired quote token (e.g. WETH) for the returned price
     * @return price The spot price of the token
     * @return actualQuoteToken The actual quote token used for the returned price. Matches requestedQuoteToken
     */
    function _getSpotPrice(
        address token,
        address pool,
        address requestedQuoteToken,
        bool useExchangeRate
    ) private returns (uint256 price, address actualQuoteToken, address baseAsset) {
        baseAsset = IERC4626(pool).asset();
        uint8 vaultDecimals = IERC4626(pool).decimals();
        uint8 baseAssetDecimals = IERC20Metadata(baseAsset).decimals();
        uint256 exchangeRate = IERC4626(pool).convertToAssets(10 ** vaultDecimals);

        if (token != pool) {
            if (token != baseAsset) {
                revert Errors.InvalidParam("token");
            }
        }

        // Query the liquidity pool we will lookup a spot price from
        LookupInfo memory lookupInfo = tokenLookupPools[baseAsset];
        uint256 deviationBps = lookupInfo.deviationBps;
        Errors.verifyNotZero(deviationBps, "deviationBps");

        if (lookupInfo.remapAsset == 1) {
            // For tokens that are mid liquidity migration that
            // are functionally 1:1
            baseAsset = remapLookup[baseAsset];
        }

        RootPriceOracle rootOracle = RootPriceOracle(address(systemRegistry.rootPriceOracle()));

        price = rootOracle.getPriceInQuote(baseAsset, requestedQuoteToken);

        if (useExchangeRate) {
            // slither-disable-next-line divide-before-multiply
            price = exchangeRate * price * (10_000 + deviationBps) / ((10 ** baseAssetDecimals) * 10_000);
        } else {
            price = price * (10_000 + deviationBps) / 10_000;
        }
        actualQuoteToken = requestedQuoteToken;
    }
}
