// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {IPlugin} from "../interfaces/IPlugin.sol";
import {ILaunchpadViewer} from "../interfaces/ILaunchpadViewer.sol";

/// @title RestrictDepositorPlugin
/// @notice Plugin that enforces whitelist-based deposit and withdrawal restrictions
/// @dev Used for invite-only fundraising (e.g., Whales markets)
contract RestrictDepositorPlugin is IPlugin {
    /// @notice Maximum allowed whitelist length
    uint256 public constant MAX_WHITELIST_LENGTH = 128;

    /// @notice Thrown when a depositor is not whitelisted
    error DepositorNotWhitelisted(address depositor);

    /// @notice Thrown when a withdrawer is not whitelisted
    error WithdrawerNotWhitelisted(address withdrawer);

    /// @notice Thrown when whitelist exceeds maximum length
    /// @param length The actual whitelist length
    /// @param max The maximum allowed length
    error WhitelistTooLarge(uint256 length, uint256 max);

    /// @notice Checks if depositor is whitelisted before allowing deposit
    /// @param deposit Deposit information including proposalId, depositor, outcome, and amount
    /// @param args ABI-encoded address[] whitelist
    function beforeDeposit(DepositInfo calldata deposit, bytes calldata args) external pure override {
        address[] memory whitelist = abi.decode(args, (address[]));

        if (!_isWhitelisted(deposit.depositor, whitelist)) {
            revert DepositorNotWhitelisted(deposit.depositor);
        }
    }

    /// @notice Checks if withdrawer is whitelisted before allowing withdrawal
    /// @param withdraw Withdrawal information including proposalId, withdrawer, outcome, and amount
    /// @param args ABI-encoded address[] whitelist
    function beforeWithdraw(WithdrawInfo calldata withdraw, bytes calldata args) external pure override {
        address[] memory whitelist = abi.decode(args, (address[]));

        if (!_isWhitelisted(withdraw.withdrawer, whitelist)) {
            revert WithdrawerNotWhitelisted(withdraw.withdrawer);
        }
    }

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

    /// @notice Validates whitelist length during proposal creation
    /// @param args ABI-encoded address[] whitelist
    function checkParameters(bytes calldata args) external pure override {
        address[] memory whitelist = abi.decode(args, (address[]));
        if (whitelist.length > MAX_WHITELIST_LENGTH) {
            revert WhitelistTooLarge(whitelist.length, MAX_WHITELIST_LENGTH);
        }
    }

    /// @notice Internal helper to check if an address is in the whitelist
    /// @param user Address to check
    /// @param whitelist Array of whitelisted addresses
    /// @return isWhitelisted True if user is in whitelist
    function _isWhitelisted(address user, address[] memory whitelist) internal pure returns (bool isWhitelisted) {
        for (uint256 i = 0; i < whitelist.length; i++) {
            if (whitelist[i] == user) {
                return true;
            }
        }
        return false;
    }
}
