// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

interface ITransferPolicy {
    /// @notice Whether or not the `account` is allowed to transfer shares
    /// @dev A return value of 'true' indicates at the `account` *is* allowed to perform transfers
    function canTransferShares(
        address account
    ) external view returns (bool);

    /// @notice Whether or not the `account` is allowed to request deposits
    /// @dev A return value of 'true' indicates at the `account` *is* allowed to request deposits
    function canDeposit(
        address account
    ) external view returns (bool);

    /// @notice Whether or not the `account` is allowed to request redemptions
    /// @dev A return value of 'true' indicates at the `account` *is* allowed to request redemptions
    function canRedeem(
        address account
    ) external view returns (bool);
}
