// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { IERC4626 } from "src/interfaces/vault/IERC4626.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";

/// @title Destination Vault to proxy interactions with ERC4626 vaults/tokens
contract ERC4626DestinationVault is DestinationVault {
    error CalculatorAssetMismatch(address calculator, address id, address underlying);

    constructor(
        ISystemRegistry sysRegistry
    ) DestinationVault(sysRegistry) { }

    /// @inheritdoc DestinationVault
    function internalDebtBalance() public view override returns (uint256) {
        return totalSupply();
    }

    /// @inheritdoc DestinationVault
    function externalDebtBalance() public view virtual override returns (uint256) {
        return 0;
    }

    /// @inheritdoc IDestinationVault
    function externalQueriedBalance() public view virtual override returns (uint256) {
        return 0;
    }

    /// @inheritdoc IDestinationVault
    function exchangeName() external pure virtual override returns (string memory) {
        return "none";
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure virtual override returns (string memory) {
        return "self";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure virtual override returns (string memory) {
        return "hold";
    }

    /// @inheritdoc IDestinationVault
    function poolDealInEth() external pure override returns (bool) {
        return false;
    }

    /// @inheritdoc IDestinationVault
    function underlyingTotalSupply() external view override returns (uint256) {
        return IERC20(_underlying).totalSupply();
    }

    /// @inheritdoc IDestinationVault
    function underlyingTokens() external view virtual override returns (address[] memory result) {
        result = new address[](1);
        result[0] = IERC4626(_underlying).asset();
    }

    /// @inheritdoc IDestinationVault
    function underlyingReserves()
        external
        view
        virtual
        override
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        tokens = new address[](1);
        amounts = new uint256[](1);
        tokens[0] = IERC4626(_underlying).asset();
        amounts[0] = IERC4626(_underlying).totalAssets();
    }

    /// @inheritdoc DestinationVault
    function _onDeposit(
        uint256 amount
    ) internal virtual override {
        // Do nothing
    }

    /// @inheritdoc DestinationVault
    function _ensureLocalUnderlyingBalance(
        uint256 amount
    ) internal virtual override {
        // Do nothing, and return the empty amount
    }

    /// @inheritdoc DestinationVault
    function _collectRewards() internal virtual override returns (uint256[] memory amounts, address[] memory tokens) {
        // Do nothing and return empty amounts and tokens
    }

    /// @inheritdoc DestinationVault
    function _burnUnderlyer(
        uint256 underlyerAmount
    ) internal virtual override returns (address[] memory tokens, uint256[] memory amounts) {
        tokens = new address[](1);
        tokens[0] = IERC4626(_underlying).asset();

        amounts = new uint256[](1);
        amounts[0] = IERC4626(_underlying).redeem(underlyerAmount, address(this), address(this));
    }

    /// @inheritdoc DestinationVault
    function getPool() public view virtual override returns (address) {
        return _underlying;
    }

    /// @inheritdoc DestinationVault
    function _validateCalculator(
        address calculator
    ) internal view override {
        address id = IStatsCalculator(calculator).getAddressId();
        if (id != _underlying) {
            revert CalculatorAssetMismatch(calculator, id, _underlying);
        }
    }
}
