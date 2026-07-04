// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Stats } from "src/stats/Stats.sol";
import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { IDexLSTStats } from "src/interfaces/stats/IDexLSTStats.sol";
import { BaseStatsCalculator } from "src/stats/calculators/base/BaseStatsCalculator.sol";
import { IStatsCalculatorRegistry } from "src/interfaces/stats/IStatsCalculatorRegistry.sol";
import { ILSTStats } from "src/interfaces/stats/ILSTStats.sol";
import { IRootPriceOracle } from "src/interfaces/oracles/IRootPriceOracle.sol";
import { IERC20Metadata as IERC20 } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Roles } from "src/libs/Roles.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";

/// @title Holds a single LST and fronts those stats
contract HoldTokenCalculator is IDexLSTStats, BaseStatsCalculator {
    /// =====================================================
    /// Private Vars
    /// =====================================================

    bytes32 private _aprId;

    uint256 private _divisor;

    /// =====================================================
    /// Public Vars
    /// =====================================================

    ILSTStats[] public lstStats;

    /// @notice The token being held in this destination vault
    address public lpToken;

    /// @notice The destination that this calculator is used by
    address public destination;

    /// =====================================================
    /// Structs
    /// =====================================================

    struct InitData {
        address tokenToHold;
    }

    /// =====================================================
    /// Errors
    /// =====================================================

    error DependentAprIdsMismatchTokens(uint256 numDependentAprIds, uint256 numCoins);

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry
    ) BaseStatsCalculator(_systemRegistry) { }

    /// @inheritdoc IStatsCalculator
    function initialize(bytes32[] calldata dependentAprIds, bytes calldata initData) external override initializer {
        InitData memory decodedInitData = abi.decode(initData, (InitData));
        Errors.verifyNotZero(decodedInitData.tokenToHold, "tokenToHold");
        lpToken = decodedInitData.tokenToHold;

        // We should have the same number of calculators sent in as there are coins
        if (dependentAprIds.length != 1) {
            revert DependentAprIdsMismatchTokens(dependentAprIds.length, 1);
        }

        _aprId = Stats.generateHoldTokenIdentifier(decodedInitData.tokenToHold);

        IStatsCalculatorRegistry registry = systemRegistry.statsCalculatorRegistry();

        bytes32 dependentAprId = dependentAprIds[0];

        IStatsCalculator calculator = registry.getCalculator(dependentAprId);

        if (calculator.getAddressId() != decodedInitData.tokenToHold) {
            revert Stats.CalculatorAssetMismatch(dependentAprId, address(calculator), decodedInitData.tokenToHold);
        }

        lstStats = new ILSTStats[](1);
        lstStats[0] = ILSTStats(address(calculator));

        _divisor = 10 ** IERC20(decodedInitData.tokenToHold).decimals();
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Set the destination that will use this calculator
    /// @dev Role set to match with creating destinations
    function setDestination(
        address _destination
    ) external hasRole(Roles.DESTINATION_VAULT_FACTORY_MANAGER) {
        Errors.verifyNotZero(_destination, "destination");
        if (destination != address(0)) {
            revert Errors.AlreadySet("destination");
        }

        // slither-disable-next-line missing-zero-check
        destination = _destination;
    }

    /// @inheritdoc IDexLSTStats
    function current() external returns (DexLSTStatsData memory retData) {
        IRootPriceOracle pricer = systemRegistry.rootPriceOracle();

        ILSTStats.LSTStatsData[] memory lstStatsData = new ILSTStats.LSTStatsData[](1);
        uint256[] memory reservesInEth = new uint256[](1);

        lstStatsData[0] = lstStats[0].current();
        reservesInEth[0] = (pricer.getPriceInEth(lpToken) * IERC20(lpToken).totalSupply()) / _divisor;

        retData.lastSnapshotTimestamp = block.timestamp;
        retData.lstStatsData = lstStatsData;
        retData.reservesInEth = reservesInEth;
    }

    /// @inheritdoc IStatsCalculator
    function getAddressId() external view returns (address) {
        return lpToken;
    }

    /// @inheritdoc IStatsCalculator
    function getAprId() external view returns (bytes32) {
        return _aprId;
    }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    /// @inheritdoc IStatsCalculator
    function shouldSnapshot() public pure override returns (bool) {
        return false;
    }

    /// =====================================================
    /// Functions - Internal
    /// =====================================================

    /// @inheritdoc BaseStatsCalculator
    function _snapshot() internal virtual override {
        // Intentionally left blank
    }
}
