// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../interfaces/IPlugin.sol";
import "../interfaces/ILaunchpadViewer.sol";

/**
 * @title RestrictMaximumRatioOfOutcomeDepositPlugin
 * @notice Plugin that prevents launch if any outcome exceeds a maximum percentage of total deposits
 * @dev Implements checkProposal hook to ensure balanced outcome distributions, avoiding lopsided markets
 */
contract RestrictMaximumRatioOfOutcomeDepositPlugin is IPlugin {
    /// @notice Thrown when an outcome exceeds the maximum allowed ratio
    /// @param outcome The outcome index that exceeded the threshold
    /// @param actualRatio The actual ratio in basis points (10000 = 100%)
    /// @param maxRatio The maximum allowed ratio in basis points
    error OutcomeExceedsMaximumRatio(uint256 outcome, uint256 actualRatio, uint256 maxRatio);

    /// @notice Thrown when maxRatioThreshold is outside the valid range [5000, 9999]
    /// @param threshold The invalid threshold value
    error InvalidMaxRatioThreshold(uint256 threshold);

    /**
     * @notice Hook executed before a deposit is processed
     * @dev No-op implementation - no restrictions on deposits
     * @param deposit Deposit information (unused)
     * @param args Hook arguments (unused)
     */
    function beforeDeposit(DepositInfo calldata deposit, bytes calldata args) external pure override {
        // No-op: no restrictions on deposits
    }

    /**
     * @notice Hook executed before a withdrawal is processed
     * @dev No-op implementation - no restrictions on withdrawals
     * @param withdraw Withdrawal information (unused)
     * @param args Hook arguments (unused)
     */
    function beforeWithdraw(WithdrawInfo calldata withdraw, bytes calldata args) external pure override {
        // No-op: no restrictions on withdrawals
    }

    /**
     * @notice Hook executed to check if a proposal is ready to launch
     * @dev Validates that no outcome exceeds the maximum ratio of total deposits
     * @param viewer ILaunchpadViewer instance for querying proposal state
     * @param proposalId The ID of the proposal to check
     * @param args ABI-encoded maximum ratio in basis points: abi.encode(uint256 maxRatioThreshold)
     *             where 10000 = 100%, 8000 = 80%, etc.
     * @return readyToLaunch True if all outcomes are within the maximum ratio, false otherwise
     */
    function checkProposal(ILaunchpadViewer viewer, uint256 proposalId, bytes calldata args)
        external
        view
        override
        returns (bool readyToLaunch)
    {
        uint256 maxRatioThreshold = abi.decode(args, (uint256));
        uint256 totalDeposits = viewer.proposalTotalDeposits(proposalId);

        // If no deposits yet, no ratio can be exceeded
        if (totalDeposits == 0) {
            return true;
        }

        uint256[] memory outcomes = viewer.proposalOutcomes(proposalId);

        // Check each outcome's ratio against the maximum threshold
        for (uint256 i = 0; i < outcomes.length; i++) {
            uint256 outcome = outcomes[i];
            uint256 outcomeDeposits = viewer.proposalOutcomeDeposits(proposalId, outcome);

            // Calculate ratio in basis points (10000 = 100%)
            uint256 ratio = (outcomeDeposits * 10000) / totalDeposits;

            // Guard against integer division edge case:
            // When maxRatioThreshold is high (e.g., 9999), extreme ratios can pass the
            // threshold check but floor to 0 for the minority side. This causes
            // TruthMarketV2Launcher.launch to call UniswapV4LPHelper.initializePool
            // with price=0, which reverts with InvalidPrice.
            //
            // Example: 99999:1 deposits → majority ratio = 9999, minority ratio = 0
            // Without this guard: checkProposal returns true (0 > 9999 is false)
            // With this guard: checkProposal returns false (non-zero deposits with 0 ratio)
            if (outcomeDeposits > 0 && ratio == 0) {
                return false;
            }

            // If any outcome exceeds the maximum ratio, not ready to launch
            if (ratio > maxRatioThreshold) {
                return false;
            }
        }

        return true;
    }

    /// @notice Validates maximum ratio parameters
    /// @param args ABI-encoded uint256 max ratio threshold
    /// @dev Reverts if threshold is outside [5000, 9999] basis points.
    ///      Lower bound 5000 (50%) ensures two-outcome markets are satisfiable.
    ///      Upper bound 9999 (99.99%) prevents single-sided markets.
    function checkParameters(bytes calldata args) external pure override {
        uint256 maxRatioThreshold = abi.decode(args, (uint256));
        if (maxRatioThreshold < 5000 || maxRatioThreshold > 9999) {
            revert InvalidMaxRatioThreshold(maxRatioThreshold);
        }
    }
}
