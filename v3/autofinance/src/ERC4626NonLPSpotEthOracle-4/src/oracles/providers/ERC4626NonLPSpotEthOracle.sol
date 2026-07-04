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
/// @dev Since our naked asset and lending destinations don't have a related pool we will
//  price them through a sufficiently deep pool configured here based on their base asset
contract ERC4626NonLPSpotEthOracle is SystemComponent, SecurityBase, ISpotPriceOracle {
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

    struct LookupInfo {
        address pool;
        uint8 remapAsset;
    }

    /// =====================================================
    /// Errors
    /// =====================================================

    error TokenMismatch(address token1, address token2);

    /// =====================================================
    /// Events
    /// =====================================================

    event TokenLookupPoolRegistered(address token, address pool);
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
    /// @param pool LP Pool to lookup price in
    /// @param mapLookup The asset we get the price for instead of baseAsset. Accepts 0
    function registerPool(address baseAsset, address pool, address mapLookup) external hasRole(Roles.ORACLE_MANAGER) {
        Errors.verifyNotZero(baseAsset, "baseAsset");
        Errors.verifyNotZero(pool, "pool");

        emit TokenLookupPoolRegistered(baseAsset, pool);

        tokenLookupPools[baseAsset] = LookupInfo({ pool: pool, remapAsset: mapLookup == address(0) ? 0 : 1 });
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
        Errors.verifyNotZero(lookup.pool, "existingPool");

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
        return "4626NonLpSpot";
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
        Errors.verifyNotZero(lookupInfo.pool, "lookupPool");

        if (lookupInfo.remapAsset == 1) {
            // For tokens that are mid liquidity migration that
            // are functionally 1:1
            baseAsset = remapLookup[baseAsset];
        }

        RootPriceOracle rootOracle = RootPriceOracle(address(systemRegistry.rootPriceOracle()));

        // Spot price of the vaults base asset in terms of the requested quote
        price = _getSpotPriceInQuote(rootOracle, baseAsset, lookupInfo.pool, requestedQuoteToken);
        if (useExchangeRate) {
            price = exchangeRate * price / (10 ** baseAssetDecimals);
        }

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
