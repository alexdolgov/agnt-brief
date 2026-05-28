// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { Errors } from "src/utils/Errors.sol";
import { IRootPriceOracle } from "src/interfaces/oracles/IRootPriceOracle.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { RootPriceOracle } from "src/oracles/RootPriceOracle.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IPriceOracle } from "src/interfaces/oracles/IPriceOracle.sol";
import { ISpotPriceOracle } from "src/interfaces/oracles/ISpotPriceOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @notice Exposes oracle functions to be used solely off-chain
contract SolverRootOracle is SystemComponent, IRootPriceOracle {
    error MissingSpotPriceOracle(address token);

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) { }

    function getPriceInEth(
        address token
    ) external override returns (uint256) {
        return _root().getPriceInEth(token);
    }

    function getSpotPriceInEth(address token, address pool) external override returns (uint256) {
        return _root().getSpotPriceInEth(token, pool);
    }

    function getSpotPriceInQuote(address token, address pool, address quote) external returns (uint256) {
        Errors.verifyNotZero(token, "token");
        Errors.verifyNotZero(pool, "pool");
        Errors.verifyNotZero(quote, "quote");

        RootPriceOracle rootOracle = _root();

        ISpotPriceOracle spotOracle = rootOracle.poolMappings(pool);
        if (address(spotOracle) == address(0)) {
            revert MissingSpotPriceOracle(pool);
        }

        (uint256 rawPrice, address actualQuoteToken) = spotOracle.getSpotPrice(token, pool, quote);

        return enforceQuoteToken(quote, actualQuoteToken, rawPrice);
    }

    function enforceQuoteToken(
        address quoteToken,
        address actualQuoteToken,
        uint256 rawPrice
    ) public returns (uint256) {
        // If quote token returned is the requested one we return price as is
        if (actualQuoteToken == quoteToken) {
            return rawPrice;
        }

        uint256 decimals = IERC20Metadata(actualQuoteToken).decimals();

        // If not, get the conversion rate from the actualQuoteToken to quoteToken and then derive the spot price
        return rawPrice * getPriceInQuote(actualQuoteToken, quoteToken) / 10 ** decimals;
    }

    function getPriceInQuote(address base, address quote) public override returns (uint256) {
        return _root().getPriceInQuote(base, quote);
    }

    function getRangePricesLP(
        address lpToken,
        address pool,
        address quoteToken
    ) external override returns (uint256, uint256, bool) {
        // slither-disable-next-line unused-return
        return _root().getRangePricesLP(lpToken, pool, quoteToken);
    }

    function getFloorCeilingPrice(
        address pool,
        address lpToken,
        address inQuote,
        bool ceiling
    ) external override returns (uint256) {
        return _root().getFloorCeilingPrice(pool, lpToken, inQuote, ceiling);
    }

    function getFloorPrice(address a1, address a2, address a3) external override returns (uint256) {
        return _root().getFloorPrice(a1, a2, a3);
    }

    function getCeilingPrice(address a1, address a2, address a3) external override returns (uint256) {
        return _root().getCeilingPrice(a1, a2, a3);
    }

    function tokenMappings(
        address a1
    ) external view returns (IPriceOracle) {
        return _root().tokenMappings(a1);
    }

    function poolMappings(
        address a1
    ) external view returns (ISpotPriceOracle) {
        return _root().poolMappings(a1);
    }

    function safeSpotPriceThresholds(
        address a1
    ) external view returns (uint256) {
        return _root().safeSpotPriceThresholds(a1);
    }

    function _root() internal view returns (RootPriceOracle) {
        return RootPriceOracle(address(systemRegistry.rootPriceOracle()));
    }
}
