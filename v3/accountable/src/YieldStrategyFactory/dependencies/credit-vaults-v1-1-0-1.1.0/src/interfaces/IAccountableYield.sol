// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {PermissionLevel} from "./IAccess.sol";
import {IAccountableLoan} from "./IAccountableStrategy.sol";

/// @notice Initialization parameters for yield strategy
struct YieldInitParams {
    /// @notice The asset of the yield strategy
    address asset;
    /// @notice The globals registry address
    address globals;
    /// @notice The fee manager address
    address feeManager;
    /// @notice The investment manager address
    address investmentManager;
    /// @notice Whether the shares are transferable
    bool sharesTransferable;
    /// @notice The permission level of the yield strategy
    PermissionLevel permissionLevel;
    /// @notice The name of the share token
    string name;
    /// @notice The symbol of the share token
    string symbol;
}

/// @title IAccountableYield
/// @notice Interface for NAV-based yield strategy
interface IAccountableYield is IAccountableLoan {
    /// @notice Emitted when borrower accepts terms
    event TermsAccepted();

    /// @notice Emitted when borrower rejects terms
    event TermsRejected();

    /// @notice Emitted when fee shares are minted
    /// @param recipient The address of the recipient
    /// @param shares The amount of fee shares minted
    event FeeSharesMinted(address indexed recipient, uint256 shares);

    /// @notice Emitted when delinquency status changes
    /// @param isDelinquent Whether the loan is currently delinquent
    /// @param timestamp The timestamp of the delinquency status change
    event DelinquencyStatusChanged(bool isDelinquent, uint256 timestamp);

    /// @notice Emitted when NAV grace period is updated
    /// @param oldPeriod The old NAV grace period
    /// @param newPeriod The new NAV grace period
    event NavGracePeriodSet(uint256 oldPeriod, uint256 newPeriod);

    /// @notice Emitted when penalties are accrued
    /// @param amount The amount of penalties accrued
    /// @param totalAccrued The total accrued penalties
    event PenaltiesAccrued(uint256 amount, uint256 totalAccrued);

    /// @notice Accept initial or pending terms
    /// @dev Can only be called by borrower
    function acceptTerms() external;

    /// @notice Reject initial or pending terms
    /// @dev Can only be called by borrower
    function rejectTerms() external;

    /// @notice Set the NAV grace period
    /// @param period Duration in seconds that NAV remains fresh after update
    function setNavGracePeriod(uint256 period) external;

    /// @notice Accrue fees and process withdrawals
    /// @dev Can be called by anyone to trigger fee accrual
    function accrueAndProcess() external returns (uint256 usedAssets);

    /// @notice Get last recorded total assets
    /// @return The last recorded total assets
    function lastTotalAssets() external view returns (uint256);

    /// @notice Get lost assets (realized losses)
    /// @return The lost assets
    function lostAssets() external view returns (uint256);

    /// @notice Get peak total assets (for performance fee calculation)
    /// @return The peak total assets
    function peakTotalAssets() external view returns (uint256);

    /// @notice Get deployed assets value
    /// @return The value of assets deployed outside the vault
    function deployedAssets() external view returns (uint256);

    /// @notice Get NAV grace period deadline
    /// @return The NAV grace period deadline
    function navGraceDeadline() external view returns (uint256);

    /// @notice Get NAV grace period duration
    /// @return The NAV grace period duration
    function navGracePeriod() external view returns (uint256);

    /// @notice Get the accumulated penalties from delinquency
    /// @return The accumulated penalties
    function accruedPenalties() external view returns (uint256);
}
