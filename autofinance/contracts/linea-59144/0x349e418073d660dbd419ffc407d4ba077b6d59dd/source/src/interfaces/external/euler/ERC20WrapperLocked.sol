// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.24;

interface ERC20WrapperLocked {
    function underlying() external view returns (address);

    /// @notice Gets all the normalized lock timestamps of locked amounts for an account
    /// @param account The address to check
    /// @return An array of normalized lock timestamps
    function getLockedAmountsLockTimestamps(
        address account
    ) external view returns (uint256[] memory);

    /// @notice Withdraws tokens to a specified account based on multiple normalized lock timestamps as per the lock
    /// schedule.
    /// The remainder of the tokens are transferred to the receiver address configured.
    /// @param account The address to receive the withdrawn tokens
    /// @param lockTimestamps An array of normalized lock timestamps to withdraw tokens for
    /// @param allowRemainderLoss If true, is it allowed for the remainder of the tokens to be transferred to the
    /// receiver address configured as per the lock schedule. If false and the calculated remainder amount is non-zero,
    /// the withdrawal will revert.
    /// @return bool indicating success of the withdrawal
    function withdrawToByLockTimestamps(
        address account,
        uint256[] memory lockTimestamps,
        bool allowRemainderLoss
    ) external returns (bool);
}
