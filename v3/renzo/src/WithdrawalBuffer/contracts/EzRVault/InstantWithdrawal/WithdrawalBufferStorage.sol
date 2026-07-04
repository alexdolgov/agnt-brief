// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IEzRVault } from "../../EzRVault/IEzRVault.sol";

abstract contract WithdrawalBufferStorageV1 {
    /// @dev Tracks the Fee BPS for instant withdrawals.
    uint256 public instantWithdrawalFeeBps;

    /// @dev Tracks the fee destination address for instant withdrawals.
    address public feeDestination;

    /// @dev Tracks the target amount of the withdrawal buffer.
    uint256 public withdrawBufferTarget;

    /// @dev Tracks the EzRVault contract instance.
    IEzRVault public ezRVault;

    /// @dev Tracks the whitelisted users for instant withdrawals.
    mapping(address => bool) public isWhitelisted;

    /// @dev track the pause status of withdrawal buffer
    bool public paused;

    /// @dev track the pauser account address
    address public pauser;
}
