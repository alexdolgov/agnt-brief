// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { DestinationVault, IDestinationVault } from "src/vault/DestinationVault.sol";
import { Errors } from "src/utils/Errors.sol";

/// @title Destination Vault to proxy pools by holding ERC20 tokens
contract ERC20DestinationVault is DestinationVault {
    /// @notice Only used to initialize the vault
    struct InitParams {
        string exchangeName;
    }

    /// @notice Name of the exchange this vault is associated with
    string internal _exchangeName;

    error CalculatorAssetMismatch(address calculator, address id, address underlying);

    constructor(
        ISystemRegistry sysRegistry
    ) DestinationVault(sysRegistry) { }

    /// @inheritdoc DestinationVault
    function initialize(
        IERC20Metadata baseAsset_,
        IERC20Metadata underlyer_,
        IMainRewarder rewarder_,
        address incentiveCalculator_,
        address[] memory additionalTrackedTokens_,
        bytes memory params_
    ) public virtual override {
        InitParams memory initParams = abi.decode(params_, (InitParams));

        Errors.verifyNotEmpty(initParams.exchangeName, "exchangeName");
        _exchangeName = initParams.exchangeName;

        // Base class has the initializer() modifier to prevent double-setup
        // If you don't call the base initialize, make sure you protect this call
        super.initialize(baseAsset_, underlyer_, rewarder_, incentiveCalculator_, additionalTrackedTokens_, params_);
    }

    /// @inheritdoc DestinationVault
    function internalDebtBalance() public view override returns (uint256) {
        return totalSupply();
    }

    /// @inheritdoc DestinationVault
    function externalDebtBalance() public pure override returns (uint256) {
        return 0;
    }

    /// @inheritdoc IDestinationVault
    function externalQueriedBalance() public pure override returns (uint256) {
        return 0;
    }

    /// @inheritdoc IDestinationVault
    function exchangeName() external view override returns (string memory) {
        return _exchangeName;
    }

    /// @inheritdoc IDestinationVault
    function poolType() external pure override returns (string memory) {
        return "self";
    }

    /// @inheritdoc IDestinationVault
    function destType() external pure override returns (string memory) {
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
    function underlyingTokens() external view override returns (address[] memory result) {
        result = new address[](1);
        result[0] = _underlying;
    }

    /// @inheritdoc IDestinationVault
    function underlyingReserves() external view override returns (address[] memory tokens, uint256[] memory amounts) {
        tokens = new address[](1);
        amounts = new uint256[](1);
        tokens[0] = _underlying;
        amounts[0] = totalSupply();
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
        amounts = new uint256[](1);
        tokens[0] = _underlying;
        amounts[0] = underlyerAmount;
    }

    /// @inheritdoc DestinationVault
    function getPool() public view override returns (address) {
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
