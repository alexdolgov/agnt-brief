// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IPlugin} from "../interfaces/IPlugin.sol";
import {ILaunchpadViewer} from "../interfaces/ILaunchpadViewer.sol";

/// @title BinaryOutcomePlugin
/// @notice Plugin that restricts deposits to binary outcomes (1 = YES, 2 = NO)
/// @dev Used by TruthMarketV2 launchers and distributors which only handle outcomes 1 and 2
contract BinaryOutcomePlugin is IPlugin {
    /// @notice Thrown when an outcome is not 1 or 2
    error OutcomeNotWhitelisted(uint256 outcome);

    /// @notice Rejects deposits to any outcome other than 1 (YES) or 2 (NO)
    /// @param deposit Deposit information including proposalId, depositor, outcome, and amount
    /// @param args Unused - binary outcomes are hardcoded
    function beforeDeposit(DepositInfo calldata deposit, bytes calldata args) external pure override {
        if (deposit.outcome != 1 && deposit.outcome != 2) {
            revert OutcomeNotWhitelisted(deposit.outcome);
        }
    }

    /// @notice No-op implementation - plugin does not restrict withdrawals
    function beforeWithdraw(WithdrawInfo calldata, bytes calldata) external pure override {}

    /// @notice No-op implementation - plugin does not validate proposal readiness
    /// @return readyToLaunch Always returns true
    function checkProposal(ILaunchpadViewer, uint256, bytes calldata)
        external
        pure
        override
        returns (bool readyToLaunch)
    {
        return true;
    }

    /// @notice No-op - binary outcomes are hardcoded, no parameters to validate
    function checkParameters(bytes calldata) external pure override {}
}
