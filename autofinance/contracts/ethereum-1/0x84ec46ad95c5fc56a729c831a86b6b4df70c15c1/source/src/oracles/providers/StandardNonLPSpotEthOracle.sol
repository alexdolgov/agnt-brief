// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ISpotPriceOracle } from "src/interfaces/oracles/ISpotPriceOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { Roles } from "src/libs/Roles.sol";
import { RootPriceOracle } from "src/oracles/RootPriceOracle.sol";

/// @title Spot price oracle for standard tokens that don't have a set pool
/// @dev Since our standard tokens don't have a related pool we will
//  price them through a sufficiently deep pool configured here based on the token itself
contract StandardNonLPSpotEthOracle is SystemComponent, SecurityBase, ISpotPriceOracle {
    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice The pool to lookup a spot price from for a given token
    mapping(address => LookupInfo) public tokenLookupPools;

    /// @notice The asset to use to query price for instead of the token
    mapping(address => address) public remapLookup;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct LookupInfo {
        address[] pools;
        uint8 remapAsset;
    }

    /// =====================================================
    /// Errors
    /// =====================================================

    error TokenMismatch(address token1, address token2);

    /// =====================================================
    /// Events
    /// =====================================================

    event TokenLookupPoolRegistered(address token, address[] pools);
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

    /// @notice Register pools for token price discovery
    /// @param token The token that needs price discovery
    /// @param pools Array of liquidity pools to query for pricing (prices will be averaged)
    /// @param mapLookup Optional alternative token to price instead (for migrations/proxies)
    function registerPool(
        address token,
        address[] memory pools,
        address mapLookup
    ) external hasRole(Roles.ORACLE_MANAGER) {
        uint256 poolLen = pools.length;

        Errors.verifyNotZero(token, "token");
        Errors.verifyNotZero(poolLen, "poolLen");

        for (uint256 i = 0; i < poolLen;) {
            Errors.verifyNotZero(pools[i], "pool");
            unchecked {
                ++i;
            }
        }

        emit TokenLookupPoolRegistered(token, pools);

        tokenLookupPools[token] = LookupInfo({ pools: pools, remapAsset: mapLookup == address(0) ? 0 : 1 });
        if (mapLookup != address(0)) {
            remapLookup[token] = mapLookup;
        }
    }

    /// @notice Remove all configured pools for a token
    /// @param token The token to remove price discovery configuration for
    function unregisterPool(
        address token
    ) external hasRole(Roles.ORACLE_MANAGER) {
        Errors.verifyNotZero(token, "token");

        LookupInfo memory lookup = tokenLookupPools[token];
        Errors.verifyNotZero(lookup.pools.length, "existingPool");

        emit TokenLookupPoolUnregistered(token);

        if (lookup.remapAsset == 1) {
            delete remapLookup[token];
        }
        delete tokenLookupPools[token];
    }

    /// @inheritdoc ISpotPriceOracle
    function getSpotPrice(
        address token,
        address pool,
        address requestedQuoteToken
    ) external returns (uint256 price, address actualQuoteToken) {
        // For standard tokens, the token address serves as both token and pool identifier
        (price, actualQuoteToken) = _getSpotPrice(token, pool, requestedQuoteToken);
    }

    /// @inheritdoc ISpotPriceOracle
    function getSafeSpotPriceInfo(
        address pool,
        address lpToken,
        address quoteToken
    ) external returns (uint256 totalSupply, ReserveItemInfo[] memory reserves) {
        // Validate that the token and pool identifiers match
        _ensureTokenMatch(lpToken, pool);

        totalSupply = IERC20Metadata(lpToken).totalSupply();

        // Get current market price for the token
        (uint256 price, address actualQuoteToken) = _getSpotPrice(lpToken, pool, quoteToken);

        reserves = new ReserveItemInfo[](1);
        reserves[0] = ReserveItemInfo({
            token: lpToken,
            reserveAmount: totalSupply,
            rawSpotPrice: price,
            actualQuoteToken: actualQuoteToken
        });
    }

    /// @inheritdoc ISpotPriceOracle
    function getDescription() external pure override returns (string memory) {
        return "StandardNonLpSpot";
    }

    /// @notice Get the complete lookup info for a token (for testing)
    /// @param token The token to get lookup info for
    /// @return pools The array of pools configured for the token
    /// @return remapAsset Whether remapping is enabled (0 = no, 1 = yes)
    function getTokenLookupInfo(
        address token
    ) external view returns (address[] memory pools, uint8 remapAsset) {
        LookupInfo memory lookup = tokenLookupPools[token];
        return (lookup.pools, lookup.remapAsset);
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _ensureTokenMatch(address token1, address token2) private pure {
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
        address requestedQuoteToken
    ) private returns (uint256 price, address actualQuoteToken) {
        // Ensure token and pool parameters are consistent
        if (token != pool) {
            revert Errors.InvalidParam("token");
        }

        // Retrieve configured pools for price discovery
        LookupInfo memory lookupInfo = tokenLookupPools[token];
        uint256 poolLen = lookupInfo.pools.length;
        Errors.verifyNotZero(poolLen, "poolLen");

        address priceToken = token;
        if (lookupInfo.remapAsset == 1) {
            // Use alternative token for pricing (migration/proxy scenarios)
            priceToken = remapLookup[token];
        }

        RootPriceOracle rootOracle = RootPriceOracle(address(systemRegistry.rootPriceOracle()));

        // Calculate arithmetic mean price across all configured pools
        for (uint256 i = 0; i < poolLen;) {
            price += _getSpotPriceInQuote(rootOracle, priceToken, lookupInfo.pools[i], requestedQuoteToken);
            unchecked {
                ++i;
            }
        }
        price = price / poolLen;

        actualQuoteToken = requestedQuoteToken;
    }

    function _getSpotPriceInQuote(
        RootPriceOracle rootOracle,
        address token,
        address pool,
        address quote
    ) private returns (uint256) {
        ISpotPriceOracle spotOracle = rootOracle.poolMappings(pool);
        Errors.verifyNotZero(address(spotOracle), "spotOracle");

        (uint256 rawPrice, address actualQuoteToken) = spotOracle.getSpotPrice(token, pool, quote);

        return _enforceQuoteToken(rootOracle, quote, actualQuoteToken, rawPrice);
    }

    function _enforceQuoteToken(
        RootPriceOracle rootOracle,
        address quoteToken,
        address actualQuoteToken,
        uint256 rawPrice
    ) private returns (uint256) {
        // If quote token returned is the requested one we return price as is
        if (actualQuoteToken == quoteToken) {
            return rawPrice;
        }

        uint256 decimals = IERC20Metadata(actualQuoteToken).decimals();

        // If not, get the conversion rate from the actualQuoteToken to quoteToken and then derive the spot price
        return rawPrice * rootOracle.getPriceInQuote(actualQuoteToken, quoteToken) / 10 ** decimals;
    }
}
