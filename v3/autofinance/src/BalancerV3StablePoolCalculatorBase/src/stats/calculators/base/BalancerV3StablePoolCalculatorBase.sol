// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ILSTStats } from "src/interfaces/stats/ILSTStats.sol";
import { Address } from "openzeppelin-contracts/utils/Address.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IDexLSTStats } from "src/interfaces/stats/IDexLSTStats.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "openzeppelin-contracts/interfaces/IERC4626.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { IRootPriceOracle } from "src/interfaces/oracles/IRootPriceOracle.sol";
import { IVaultExplorer } from "src/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { IStatsCalculatorRegistry } from "src/interfaces/stats/IStatsCalculatorRegistry.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { Stats } from "src/stats/Stats.sol";
import { Errors } from "src/utils/Errors.sol";
import { HooksConfig } from "src/external/balancer/v3/VaultTypes.sol";
import { BaseStatsCalculator } from "src/stats/calculators/base/BaseStatsCalculator.sol";

/// @title Balancer v3 stable pool base calculator
/// @notice This calculator will operate a bit different than other Dex based calculators.  In order to easily
/// account for the ability to boost pools (wrap any token in a yield bearing vault) in Balancer V3 pools, the
/// decision was made to ignore underlying LST / LRT 'base apr', and instead just use the 'fee apr' of the pool
/// which is calculated using the virtual price (aka bpt rate). The virtual price captures all yield growth
/// of the pool, including fees gained by LPs, underlying LST and LRT yield, and any yield from tokens deposited
/// into yield bearing vaults, meaning that it can be used to account for total apr of a pool
/// @dev Part of the initialization flow for this calculator is submitting a HooksConfig to validate against
/// the HooksConfig of the pool that this calculator will be tracking. The idea here is that this will force
/// the dev team to manually validate that any hooks being used on pool operations are compatible with our
/// system
abstract contract BalancerV3StablePoolCalculatorBase is IDexLSTStats, BaseStatsCalculator {
    using Address for address;

    /// @notice Vault explorer, allows access to vault state
    IVaultExplorer public immutable balancerVaultExplorer;

    /// @notice Address of pool this calculator is tracking
    address public poolAddress;

    /// @notice Flag indicating if the feeApr filter is initialized
    bool public feeAprFilterInitialized;

    /// @notice Number of tokens in the pool
    uint256 public numTokens;

    /// @notice The last time a snapshot was taken
    uint256 public lastSnapshotTimestamp;

    /// @notice The pool's virtual price the last time a snapshot was taken
    uint256 public lastVirtualPrice;

    /// @notice The most recent feeApr
    uint256 public feeApr;

    /// @notice Generated ID for this calculator
    bytes32 internal _aprId;

    /// @notice The stats contracts for the underlying LSTs
    ILSTStats[] public lstStats;

    /// @notice The addresses of the pools reserve tokens
    address[] public reserveTokens;

    /// @param poolAddress Address of pool that this calculator is tracking
    /// @param submittedHooksConfig Pool hooks configuration.  Must match config queried from vault exactly
    /// @param isBoosted Array of bools denoting whether a token is boosted or not. Must be in order of tokens in pool
    struct InitData {
        address poolAddress;
        HooksConfig submittedHooksConfig;
        bool[] isBoosted;
    }

    constructor(ISystemRegistry _registry, address _balancerVaultExplorer) BaseStatsCalculator(_registry) {
        Errors.verifyNotZero(_balancerVaultExplorer, "_balancerVaultExplorer");

        balancerVaultExplorer = IVaultExplorer(_balancerVaultExplorer);
    }

    /// @inheritdoc IStatsCalculator
    function getAddressId() external view returns (address) {
        return poolAddress;
    }

    /// @inheritdoc IStatsCalculator
    function getAprId() external view returns (bytes32) {
        return _aprId;
    }

    /// @inheritdoc IStatsCalculator
    /// @dev On this calculator, if submitting a boosted token aprId will be for ERC4626.asset() token
    function initialize(
        bytes32[] memory dependentAprIds,
        bytes memory initData
    ) external virtual override initializer {
        InitData memory data = abi.decode(initData, (InitData));

        address localPoolAddress = data.poolAddress;

        Errors.verifyNotZero(localPoolAddress, "data.poolAddress");
        // slither-disable-next-line missing-zero-check
        poolAddress = localPoolAddress;

        HooksConfig memory queriedHooksConfig = balancerVaultExplorer.getHooksConfig(localPoolAddress);
        _validateHooks(data.submittedHooksConfig, queriedHooksConfig);

        (IERC20[] memory _reserveTokens,) = getPoolTokens();

        uint256 localNumTokens = _reserveTokens.length;
        Errors.verifyNotZero(localNumTokens, "localNumTokens");
        numTokens = localNumTokens;

        // Want same number of calcs sent in as tokens in pool
        Errors.verifyArrayLengths(localNumTokens, dependentAprIds.length, "localNumTokens+dependentAprIds.length");

        _aprId = Stats.generateBalancerPoolIdentifier(poolAddress);

        IStatsCalculatorRegistry statsRegistry = systemRegistry.statsCalculatorRegistry();
        lstStats = new ILSTStats[](localNumTokens);
        reserveTokens = new address[](numTokens);

        for (uint256 i = 0; i < localNumTokens; ++i) {
            bytes32 dependentAprId = dependentAprIds[i];
            address token = address(_reserveTokens[i]);

            Errors.verifyNotZero(dependentAprId, "dependentAprId");

            // Checking that token decimals call passes, as it is used farther down in the contract.  Address.sol
            // catches a call failure and a contract not existing when a call passes and has zero data length (EOA).
            // We make sure data length is > 0, as this call is expected to return data.  This also will catch the
            // `token == address(0)` revert scenario
            bytes memory tokenRetData = token.functionStaticCall(abi.encodeCall(IERC20Metadata.decimals, ()));
            if (tokenRetData.length == 0) revert Errors.InvalidAddress(token);

            reserveTokens[i] = token;

            if (dependentAprId != Stats.NOOP_APR_ID) {
                IStatsCalculator calculator = statsRegistry.getCalculator(dependentAprId);

                // If we have a boosted token, calculator will be for the ERC4626 asset token
                if (data.isBoosted[i]) {
                    token = IERC4626(token).asset();
                }

                // Ensure that the calculator we configured is meant to handle the token
                // setup on the pool. Individual token calculators use the address of the token
                // itself as the address id
                if (calculator.getAddressId() != token) {
                    revert Stats.CalculatorAssetMismatch(dependentAprId, address(calculator), token);
                }
                lstStats[i] = ILSTStats(address(calculator));
            }
        }

        lastSnapshotTimestamp = block.timestamp;
        lastVirtualPrice = getVirtualPrice();
    }

    /// @inheritdoc IStatsCalculator
    function shouldSnapshot() public view virtual override returns (bool) {
        // slither-disable-start timestamp
        if (feeAprFilterInitialized) {
            return block.timestamp >= lastSnapshotTimestamp + Stats.DEX_FEE_APR_SNAPSHOT_INTERVAL;
        }
        return block.timestamp >= lastSnapshotTimestamp + Stats.DEX_FEE_APR_FILTER_INIT_INTERVAL;
        // slither-disable-end timestamp
    }

    /// @inheritdoc IDexLSTStats
    function current() external virtual returns (DexLSTStatsData memory) {
        IRootPriceOracle oracle = systemRegistry.rootPriceOracle();

        uint256 localNumTokens = numTokens;

        uint256[] memory reservesInEth = new uint256[](localNumTokens);
        ILSTStats.LSTStatsData[] memory lstStatsData = new ILSTStats.LSTStatsData[](localNumTokens);

        (IERC20[] memory tokens, uint256[] memory balances) = getPoolTokens();

        for (uint256 i = 0; i < localNumTokens; ++i) {
            reservesInEth[i] = calculateReserveInEth(oracle, tokens[i], balances[i]);
            ILSTStats stats = lstStats[i];
            if (address(stats) != address(0)) {
                ILSTStats.LSTStatsData memory statsData = stats.current();

                // Only using feeApr for this calculator. See note at top of contract for explanation
                statsData.baseApr = 0;
                lstStatsData[i] = statsData;
            }
        }

        // Returning zero values for incentive stats on purpose
        // slither-disable-next-line uninitialized-local
        StakingIncentiveStats memory stakingIncentiveStats;
        return DexLSTStatsData({
            lastSnapshotTimestamp: lastSnapshotTimestamp,
            feeApr: feeApr,
            reservesInEth: reservesInEth,
            lstStatsData: lstStatsData,
            stakingIncentiveStats: stakingIncentiveStats
        });
    }

    /// @inheritdoc BaseStatsCalculator
    /// @dev This calculator is accounting for all apr as fee apr.  See explanation at top of contract
    function _snapshot() internal virtual override {
        uint256 currentVirtualPrice = getVirtualPrice();
        uint256 currentTimestamp = block.timestamp;
        uint256 currentFeeApr = Stats.calculateAnnualizedChangeMinZero(
            lastSnapshotTimestamp, lastVirtualPrice, currentTimestamp, currentVirtualPrice
        );

        uint256 newFeeApr;
        if (feeAprFilterInitialized) {
            newFeeApr = Stats.getFilteredValue(Stats.DEX_FEE_ALPHA, feeApr, currentFeeApr);
        } else {
            newFeeApr = currentFeeApr;
            feeAprFilterInitialized = true;
        }

        emit DexSnapshotTaken(currentTimestamp, feeApr, newFeeApr, currentFeeApr);

        lastSnapshotTimestamp = currentTimestamp;
        lastVirtualPrice = currentVirtualPrice;
        feeApr = newFeeApr;
    }

    /// @notice Get reserves of token in Eth
    function calculateReserveInEth(
        IRootPriceOracle oracle,
        IERC20 token,
        uint256 balance
    ) internal virtual returns (uint256) {
        uint256 divisor = 10 ** IERC20Metadata(address(token)).decimals();

        // Oracle returning in e18, dividing by divisor of token to ensure return value is also 18 decimals
        return oracle.getPriceInEth(address(token)) * balance / divisor;
    }

    /// @dev Validating that HooksConfig submitted and queried are exactly the same
    function _validateHooks(HooksConfig memory _submitted, HooksConfig memory _queried) internal pure {
        if (keccak256(abi.encode(_submitted)) != keccak256(abi.encode(_queried))) revert Errors.InvalidConfiguration();
    }

    /// @notice Gets virtual price for apr calculations
    function getVirtualPrice() internal view virtual returns (uint256 virtualPrice);

    /// @notice Gets pool tokens and balances
    function getPoolTokens() internal view virtual returns (IERC20[] memory tokens, uint256[] memory balances);
}
