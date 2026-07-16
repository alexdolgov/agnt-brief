// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import { IDistributionManager, IncentiveProgramDetails } from "src/interfaces/silo/IDistributionManager.sol";
import { ISiloIncentivesControllerCL } from "src/interfaces/silo/ISiloIncentivesControllerCL.sol";
import { IBaseRewarder } from "src/interfaces/rewarders/IBaseRewarder.sol";
import { IDestinationVault } from "src/interfaces/vault/IDestinationVault.sol";
import { Errors } from "src/utils/Errors.sol";

struct SiloRewardState {
    /// @notice Set of all whitelisted gauges
    EnumerableSet.AddressSet whitelistedGauges;
    /// @notice Set of all extra reward tokens
    EnumerableSet.AddressSet extraRewardTokens;
    /// @notice Mapping from reward token address to ExtraRewarder address
    mapping(address => address) extraRewarders;
}

/**
 * @title Library for managing Silo gauges and extra reward tokens
 *
 * @dev This library provides comprehensive functionality to manage both:
 * - Whitelisted gauges for reward collection
 * - Extra reward token routing to ExtraRewarders
 * - Core reward collection logic with filtering
 *
 * @dev The library handles:
 * - Adding/removing gauges from whitelist
 * - Adding/removing extra reward token configurations
 * - Dynamic program discovery via IDistributionManager.getAllProgramsNames()
 * - Reward collection with filtering strategies
 * - Token processing (liquidation vs ExtraRewarder routing)
 *
 * @dev Note: Access control should be handled by the calling contract.
 */
library SiloRewardLib {
    using SafeERC20 for IERC20Metadata;
    using EnumerableSet for EnumerableSet.AddressSet;

    // keccak256(abi.encode(uint256(keccak256("autopilot.storage.SiloRewardLib")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant SLOT = 0xd777368586ae930ae191e530e87a4d24442db19a468df014057c22fc8e82aa00;

    /// @notice Event emitted when a gauge is added to whitelist
    event GaugeAdded(address indexed gauge);

    /// @notice Event emitted when a gauge is removed from whitelist
    event GaugeRemoved(address indexed gauge);

    /// @notice Event emitted when an extra reward token is added
    event ExtraRewardTokenAdded(address indexed rewardToken, address indexed extraRewarder);

    /// @notice Event emitted when an extra reward token is removed
    event ExtraRewardTokenRemoved(address indexed rewardToken);

    function load() internal pure returns (SiloRewardState storage $) {
        // slither-disable-start assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := SLOT
        }
        // slither-disable-end assembly
    }

    /// ********************************************************************************************************
    /// GAUGE MANAGEMENT FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Add a gauge to the whitelist for reward collection
     * @param gauge The address of the gauge to whitelist
     * @dev Note: Access control should be handled by the calling contract
     */
    function addGauge(
        address gauge
    ) external {
        Errors.verifyNotZero(gauge, "gauge");

        if (!load().whitelistedGauges.add(gauge)) {
            revert Errors.ItemExists();
        }

        emit GaugeAdded(gauge);
    }

    /**
     * @notice Remove a gauge from the whitelist
     * @param gauge The address of the gauge to remove from whitelist
     * @dev Note: Access control should be handled by the calling contract
     */
    function removeGauge(
        address gauge
    ) external {
        Errors.verifyNotZero(gauge, "gauge");

        if (!load().whitelistedGauges.remove(gauge)) {
            revert Errors.ItemNotFound();
        }

        emit GaugeRemoved(gauge);
    }

    /**
     * @notice Check if a gauge is whitelisted
     * @param gauge The address of the gauge
     * @return True if the gauge is whitelisted
     */
    function isGaugeWhitelisted(
        address gauge
    ) external view returns (bool) {
        return load().whitelistedGauges.contains(gauge);
    }

    /**
     * @notice Get all whitelisted gauges
     * @return Array of whitelisted gauge addresses
     */
    function getWhitelistedGauges() external view returns (address[] memory) {
        return load().whitelistedGauges.values();
    }

    /**
     * @notice Get the number of whitelisted gauges
     * @return The number of whitelisted gauges
     */
    function getWhitelistedGaugesCount() external view returns (uint256) {
        return load().whitelistedGauges.length();
    }

    /// ********************************************************************************************************
    /// EXTRA REWARD TOKEN MANAGEMENT FUNCTIONS
    /// ********************************************************************************************************

    /**
     * @notice Add an extra reward token and its associated ExtraRewarder
     * @param rewardToken The address of the reward token
     * @param extraRewarder The address of the ExtraRewarder for this token
     * @dev Validates that both rewardToken and extraRewarder are non-zero addresses
     * @dev Validates that the reward token matches the ExtraRewarder's rewardToken
     * @dev Reverts if the reward token is already configured
     * @dev Note: Access control should be handled by the calling contract
     */
    function addExtraRewardToken(address rewardToken, address extraRewarder) external {
        SiloRewardState storage $ = load();

        Errors.verifyNotZero(rewardToken, "rewardToken");
        Errors.verifyNotZero(extraRewarder, "extraRewarder");

        // Validate that the reward token matches the ExtraRewarder's rewardToken
        address extraRewarderToken = IBaseRewarder(extraRewarder).rewardToken();
        if (rewardToken != extraRewarderToken) {
            revert Errors.InvalidParam("rewardToken mismatch");
        }

        if (!$.extraRewardTokens.add(rewardToken)) {
            revert Errors.ItemExists();
        }
        $.extraRewarders[rewardToken] = extraRewarder;

        emit ExtraRewardTokenAdded(rewardToken, extraRewarder);
    }

    /**
     * @notice Remove an extra reward token
     * @param rewardToken The address of the reward token to remove
     * @dev Reverts if the reward token is not configured
     * @dev Note: Access control should be handled by the calling contract
     */
    function removeExtraRewardToken(
        address rewardToken
    ) external {
        SiloRewardState storage $ = load();

        if (!$.extraRewardTokens.remove(rewardToken)) {
            revert Errors.ItemNotFound();
        }

        delete $.extraRewarders[rewardToken];

        emit ExtraRewardTokenRemoved(rewardToken);
    }

    /**
     * @notice Check if a token is an extra reward token
     * @param rewardToken The address of the reward token to check
     * @return True if the token is an extra reward token
     */
    function isExtraRewardToken(
        address rewardToken
    ) external view returns (bool) {
        return load().extraRewardTokens.contains(rewardToken);
    }

    /**
     * @notice Get the ExtraRewarder for a specific reward token
     * @param rewardToken The address of the reward token
     * @return The address of the ExtraRewarder for this token
     */
    function getExtraRewarder(
        address rewardToken
    ) external view returns (address) {
        return load().extraRewarders[rewardToken];
    }

    /**
     * @notice Get all extra reward tokens
     * @return Array of extra reward token addresses
     */
    function getExtraRewardTokens() external view returns (address[] memory) {
        return load().extraRewardTokens.values();
    }

    /**
     * @notice Get the number of extra reward tokens
     * @return The number of extra reward tokens
     */
    function getExtraRewardTokensCount() external view returns (uint256) {
        return load().extraRewardTokens.length();
    }

    /// ********************************************************************************************************
    /// CORE REWARD COLLECTION LOGIC
    /// ********************************************************************************************************

    /**
     * @notice Collect rewards from all whitelisted gauges with filtering
     * @param filterStrategy The filter strategy to apply:
     *   - 0: Include all tokens
     *   - 1: Include only extra reward tokens
     *   - 2: Include only non-extra reward tokens
     * @param underlying Address of the underlying token (for excess balance calculation)
     * @return amounts Array of reward amounts corresponding to each token
     * @return tokens Array of unique reward token addresses
     * @dev This function handles the entire flow: get programs, filter, claim, and aggregate
     * @dev For underlying tokens, only the excess balance is transferred
     */
    // slither-disable-start cyclomatic-complexity
    function collectRewards(
        uint256 filterStrategy,
        address underlying
    ) internal returns (uint256[] memory amounts, address[] memory tokens) {
        if (filterStrategy > 2) revert Errors.InvalidParam("filterStrategy");

        SiloRewardState storage $ = load();
        address[] memory gauges = $.whitelistedGauges.values();
        uint256 gaugesLength = gauges.length;
        address[][] memory rewardTokens = new address[][](gaugesLength);
        uint256 maxTokens;

        for (uint256 i = 0; i < gaugesLength; ++i) {
            string[] memory programs = IDistributionManager(gauges[i]).getAllProgramsNames();
            rewardTokens[i] = new address[](programs.length);

            uint256 validProgramLen = 0;
            for (uint256 p = 0; p < programs.length; ++p) {
                IncentiveProgramDetails memory programDetails =
                    IDistributionManager(gauges[i]).incentivesProgram(programs[p]);

                // Apply strategy filter, collapsing the program array as we go
                if (_shouldIncludeToken(programDetails.rewardToken, filterStrategy)) {
                    programs[validProgramLen] = programs[p];
                    rewardTokens[i][p] = programDetails.rewardToken;
                    ++validProgramLen;
                    ++maxTokens;
                }
            }
            if (validProgramLen > 0) {
                // Resize the program so only we moved to the start of the array are sent off

                // slither-disable-start assembly
                // solhint-disable-next-line no-inline-assembly
                assembly {
                    mstore(programs, validProgramLen)
                }
                // slither-disable-end assembly

                // slither-disable-next-line unused-return
                ISiloIncentivesControllerCL(gauges[i]).claimRewards(address(this), programs);
            }
        }

        // Step 3: For each gauge, for each token, check balance and transfer/queue
        // Natural deduplication: after we transfer/queue a token, balance becomes 0
        tokens = new address[](maxTokens);
        amounts = new uint256[](maxTokens);
        uint256 tokenCount = 0;

        for (uint256 i = 0; i < gaugesLength; ++i) {
            uint256 rewardTokenLen = rewardTokens[i].length;
            for (uint256 r = 0; r < rewardTokenLen; ++r) {
                address rewardToken = rewardTokens[i][r];
                if (rewardToken != address(0)) {
                    uint256 balance;

                    // If reward token is the underlying token, use excess balance directly
                    if (rewardToken == underlying) {
                        balance = IDestinationVault(address(this)).excessUnderlyingBalance();
                    } else {
                        balance = IERC20Metadata(rewardToken).balanceOf(address(this));
                    }

                    // Only process if balance > 0 (natural deduplication)
                    if (balance > 0) {
                        tokens[tokenCount] = rewardToken;
                        amounts[tokenCount] = balance;
                        tokenCount++;

                        // Transfer or queue based on token type (zeros out balance)
                        address extraRewarder = $.extraRewarders[rewardToken];
                        if (extraRewarder != address(0)) {
                            // Queue to ExtraRewarder
                            IERC20Metadata(rewardToken).safeApprove(extraRewarder, balance);
                            IBaseRewarder(extraRewarder).queueNewRewards(balance);
                        } else {
                            // Transfer to liquidator
                            IERC20Metadata(rewardToken).safeTransfer(msg.sender, balance);
                        }
                    }
                }
            }
        }

        // Resize arrays
        // slither-disable-start assembly
        // solhint-disable-next-line no-inline-assembly
        assembly {
            mstore(tokens, tokenCount)
            mstore(amounts, tokenCount)
        }
        // slither-disable-end assembly
    }
    // slither-disable-end cyclomatic-complexity

    /**
     * @notice Internal helper to determine if a token should be included based on filter strategy
     * @param token The reward token address
     * @param filterStrategy The filter strategy (0: all, 1: extra only, 2: non-extra only)
     * @return True if the token should be included
     */
    function _shouldIncludeToken(address token, uint256 filterStrategy) internal view returns (bool) {
        if (token == address(0)) return false;
        if (filterStrategy == 0) return true; // Include all tokens

        bool isExtraToken = load().extraRewardTokens.contains(token);
        return filterStrategy == 1 ? isExtraToken : !isExtraToken;
    }
}
