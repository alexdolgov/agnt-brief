// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { SystemComponent } from "src/SystemComponent.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { ISpotPriceOracle } from "src/interfaces/oracles/ISpotPriceOracle.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title Price oracle for naked tokens used in ERC20DestinationVault's
/// @dev Since the ERC20DV only holds a single token and there's no pool, safe === spot
contract SelfSpotEthOracle is SystemComponent, ISpotPriceOracle {
    /// =====================================================
    /// Errors
    /// =====================================================

    error TokenMismatch(address token1, address token2);

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) { }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @inheritdoc ISpotPriceOracle
    function getSpotPrice(
        address token,
        address pool,
        address requestedQuoteToken
    ) external returns (uint256 price, address actualQuoteToken) {
        _ensureTokenMatch(token, pool);

        price = systemRegistry.rootPriceOracle().getPriceInQuote(pool, requestedQuoteToken);
        actualQuoteToken = requestedQuoteToken;
    }

    /// @inheritdoc ISpotPriceOracle
    function getSafeSpotPriceInfo(
        address pool,
        address lpToken,
        address quoteToken
    ) external returns (uint256 totalSupply, ReserveItemInfo[] memory reserves) {
        _ensureTokenMatch(pool, lpToken);

        totalSupply = IERC20Metadata(lpToken).totalSupply();

        reserves = new ReserveItemInfo[](1);
        reserves[0] = ReserveItemInfo({
            token: lpToken,
            reserveAmount: totalSupply,
            rawSpotPrice: systemRegistry.rootPriceOracle().getPriceInQuote(pool, quoteToken),
            actualQuoteToken: quoteToken
        });
    }

    /// @inheritdoc ISpotPriceOracle
    function getDescription() external pure override returns (string memory) {
        return "selfSpot";
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _ensureTokenMatch(address token1, address token2) private pure {
        if (token1 != token2) {
            revert TokenMismatch(token1, token2);
        }
    }
}
