// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {PermissionLevel} from "./IAccess.sol";
import {IAccountableLoan} from "./IAccountableStrategy.sol";

/// @notice Parameters for initializing the AccountableFixedTerm contract
struct FixedTermInitParams {
    /// @notice The asset of the loan
    address asset;
    /// @notice The global registry address
    address globals;
    /// @notice The fee manager of the loan
    address feeManager;
    /// @notice The investment manager of the loan
    address investmentManager;
    /// @notice The permission level of the loan
    PermissionLevel permissionLevel;
    /// @notice Whether the shares are transferable
    bool sharesTransferable;
    /// @notice The name of the share token
    string name;
    /// @notice The symbol of the share token
    string symbol;
}

/// @notice Loan interest parameters
struct InterestParams {
    /// @notice Interest rate per interval
    uint256 intervalRate;
    /// @notice Net potential return of the loan
    uint256 netReturn;
    /// @notice Number of intervals
    uint256 numIntervals;
    /// @notice When last payment was made
    uint256 lastPaymentTime;
    /// @notice Last interval that was paid
    uint256 lastPaymentInterval;
}

/// @notice Cache for values needed to calculate interest totals
/// @dev Struct for grouping variables to avoid stack too deep or multiple sloads
struct InterestTotalsCache {
    /// @notice The duration of the loan
    uint256 duration;
    /// @notice The start time of the loan
    uint256 startTime;
    /// @notice The principal of the loan
    uint256 principal;
    /// @notice The interest interval of the loan
    uint256 interval;
    /// @notice The maximum number of intervals of the loan
    uint256 maxIntervals;
    /// @notice The interval interest rate of the loan
    uint256 intervalRate;
    /// @notice The last time the interest was paid
    uint256 lastPaidTime;
    /// @notice The last paid interval of the loan
    uint256 lastPaidInterval;
    /// @notice The late interest grace period of the loan
    uint256 lateGracePeriod;
    /// @notice The late interest penalty of the loan
    uint256 lateInterestPenalty;
    /// @notice Whether the penalties are enabled
    bool penaltiesEnabled;
}

/// @notice Interface for the AccountableFixedTerm contract
interface IAccountableFixedTerm is IAccountableLoan {
    /// @notice Event emitted when the loan is accepted by borrower
    event LoanAccepted();

    /// @notice Event emitted when the loan is rejected by borrower
    event LoanRejected();

    /// @notice Event emitted when the loan is rolled over by borrower
    /// @param proposalId The ID of the proposal
    /// @param extensionDuration The duration of the extension
    /// @param extensionNonce The nonce of the extension
    /// @param timeLock The time lock of the proposal
    event LoanRolloverRequested(
        bytes32 indexed proposalId, uint256 extensionDuration, uint256 extensionNonce, uint256 timeLock
    );

    /// @notice Event emitted when the loan is rolled over by manager
    event LoanRolloverExecuted();

    /// @notice Event emitted when accrued interest is claimed by lender
    /// @param owner The address of the owner claiming interest
    /// @param claimedInterest The amount of interest claimed
    event InterestClaimed(address indexed owner, uint256 claimedInterest);

    /// @notice Accept the loan in locked mode
    function acceptLoanLocked() external;

    /// @notice Accept the loan in dynamic mode
    function acceptLoanDynamic() external;

    /// @notice Reject the loan
    function reject() external;

    /// @notice Claim accrued interest
    function claimInterest() external returns (uint256);

    /// @notice Get the interest data
    /// @return interest The interest amount
    /// @return penalties The penalties amount
    /// @return performanceFee The performance fee amount
    /// @return establishmentFee The establishment fee amount
    /// @return managementFee The management fee amount
    /// @return currentInterval The current interval
    function interestData()
        external
        view
        returns (
            uint256 interest,
            uint256 penalties,
            uint256 performanceFee,
            uint256 establishmentFee,
            uint256 managementFee,
            uint256 currentInterval
        );
}
