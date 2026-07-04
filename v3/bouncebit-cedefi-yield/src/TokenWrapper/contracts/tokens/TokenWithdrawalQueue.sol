// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.23;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/// @title WithdrawalQueue
/// @notice This contract is used to manage withdrawal requests.
abstract contract TokenWithdrawalQueue {
    using EnumerableSet for EnumerableSet.UintSet;

    /// @notice The structure of a withdrawal request.
    /// @param queued The amount of queued withdrawal for this request.
    /// @param amount The amount of the withdrawal request.
    /// @param claimTimestamp The timestamp when the withdrawal request can be claimed.
    /// @param claimed A flag indicating whether the withdrawal request has been claimed.
    struct WithdrawalRequest {
        uint256 queued;
        uint128 amount;
        uint40 claimTimestamp;
        bool claimed;
    }

    /// @notice The maximum number of withdrawal requests that an account can have.
    uint256 public constant MAX_REQUEST_SIZE = 10;

    /// @notice The list of all withdrawal requests.
    WithdrawalRequest[] public withdrawalRequests;
    /// @notice The mapping of withdrawal request IDs for each account.
    mapping(address => EnumerableSet.UintSet) private _ownerWithdrawalRequests;
    /// @notice The total amount of queued withdrawal requests.
    uint256 public queuedWithdrawal;
    /// @notice The total amount of claimed withdrawal requests.
    uint256 public claimedWithdrawal;

    /// @notice Emitted when a withdrawal request is created.
    event WithdrawalRequestCreated(
        address indexed owner,
        uint256 indexed requestId,
        uint256 amount,
        uint40 claimTimestamp
    );
    /// @notice Emitted when a withdrawal request is claimed.
    event WithdrawalClaimed(address indexed owner, uint256 indexed requestId, uint256 amount);

    error FailedToExec();
    error NotEnoughFeeBalance();
    error NotOwnerOrClaimed();
    error Overflow();
    error WithdrawalInQueue();
    error WithdrawalPeriodNotPassed();
    error ExceedsMaxRequestSize();

    /// @notice Creates a withdrawal request.
    /// @param account The owner of the withdrawal request.
    /// @param amount The amount to withdraw.
    function _requestWithdrawal(address account, uint256 amount) internal {
        if (amount > type(uint128).max) revert Overflow();
        if (_ownerWithdrawalRequests[account].length() >= MAX_REQUEST_SIZE) revert ExceedsMaxRequestSize();

        // Create a withdrawal request
        uint256 requestId = withdrawalRequests.length;
        WithdrawalRequest memory request = WithdrawalRequest({
            queued: queuedWithdrawal,
            amount: uint128(amount),
            claimTimestamp: uint40(block.timestamp + getUnstakePeriod()),
            claimed: false
        });
        withdrawalRequests.push(request);
        // Add the request to the owner's list of withdrawal requests
        bool success = _ownerWithdrawalRequests[account].add(requestId);
        if (!success) revert FailedToExec();

        queuedWithdrawal += amount;

        emit WithdrawalRequestCreated(account, requestId, amount, request.claimTimestamp);
    }

    /// @notice Claims a withdrawal.
    /// @param account The owner of the withdrawal request.
    /// @param requestId The ID of the withdrawal request.
    /// @return The amount of the withdrawal.
    function _claimWithdrawal(address account, uint256 requestId) internal returns (uint256) {
        if (!_ownerWithdrawalRequests[account].contains(requestId)) revert NotOwnerOrClaimed();
        WithdrawalRequest storage request = withdrawalRequests[requestId];
        if (block.timestamp < request.claimTimestamp) revert WithdrawalPeriodNotPassed();

        // Check if the contract has enough balance to fulfill the request
        if (claimedWithdrawal + underlyingTokenBalance() < request.queued + request.amount) {
            revert WithdrawalInQueue();
        }
        if (underlyingTokenBalance() < request.amount) revert NotEnoughFeeBalance();

        // Set the request as claimed
        request.claimed = true;
        // Remove the request from the owner's list of withdrawal requests
        bool success = _ownerWithdrawalRequests[account].remove(requestId);
        if (!success) revert FailedToExec();

        claimedWithdrawal += request.amount;

        emit WithdrawalClaimed(account, requestId, request.amount);

        return request.amount;
    }

    /// @notice Gets the IDs of the withdrawal requests of an owner.
    /// @param owner The owner of the withdrawal requests.
    /// @return The IDs of the withdrawal requests belonging to the owner.
    function getOwnerWithdrawalRequestIds(address owner) public view returns (uint256[] memory) {
        return _ownerWithdrawalRequests[owner].values();
    }

    /// @notice Gets the information of the claimable withdrawal requests of an owner.
    /// @param owner The owner of the withdrawal requests.
    /// @return claimableRequestIds A list of claimable withdrawal request IDs associated with the given owner.
    /// @return totalClaimableAmount The total claimable amount associated with the given owner.
    function getOwnerClaimableWithdrawalRequestInfo(
        address owner
    ) public view returns (uint256[] memory claimableRequestIds, uint256 totalClaimableAmount) {
        uint256 claimableRequestLength = 0;
        uint256 requestLength = _ownerWithdrawalRequests[owner].length();
        uint256[] memory _claimableRequestIds = new uint256[](requestLength);
        for (uint256 i = 0; i < requestLength; i++) {
            uint256 requestId = _ownerWithdrawalRequests[owner].at(i);
            if (block.timestamp >= withdrawalRequests[requestId].claimTimestamp) {
                _claimableRequestIds[claimableRequestLength++] = requestId;
                totalClaimableAmount += withdrawalRequests[requestId].amount;
            }
        }

        claimableRequestIds = new uint256[](claimableRequestLength);
        for (uint256 i = 0; i < claimableRequestLength; i++) {
            claimableRequestIds[i] = _claimableRequestIds[i];
        }

        return (claimableRequestIds, totalClaimableAmount);
    }

    /// @notice Gets the information of the pending withdrawal requests of an owner.
    /// @param owner The owner of the withdrawal requests.
    /// @return pendingRequestIds A list of pending withdrawal request IDs associated with the given owner.
    /// @return totalPendingAmount The total pending amount associated with the given owner.
    function getOwnerPendingWithdrawalRequestInfo(
        address owner
    ) public view returns (uint256[] memory pendingRequestIds, uint256 totalPendingAmount) {
        uint256 pendingRequestLength = 0;
        uint256 requestLength = _ownerWithdrawalRequests[owner].length();
        uint256[] memory _pendingRequestIds = new uint256[](requestLength);
        for (uint256 i = 0; i < requestLength; i++) {
            uint256 requestId = _ownerWithdrawalRequests[owner].at(i);
            if (block.timestamp < withdrawalRequests[requestId].claimTimestamp) {
                totalPendingAmount += withdrawalRequests[requestId].amount;
                _pendingRequestIds[pendingRequestLength++] = requestId;
            }
        }

        pendingRequestIds = new uint256[](pendingRequestLength);
        for (uint256 i = 0; i < pendingRequestLength; i++) {
            pendingRequestIds[i] = _pendingRequestIds[i];
        }

        return (pendingRequestIds, totalPendingAmount);
    }

    function getWithdrawalRequest(uint256 requestId) public view returns (WithdrawalRequest memory) {
        return withdrawalRequests[requestId];
    }

    function getLengthOfWithdrawalRequests() public view returns (uint256) {
        return withdrawalRequests.length;
    }

    /// @notice Gets the unstake period.
    /// @dev This function should be overridden by derived contracts.
    /// @return The unstake period.
    function getUnstakePeriod() public view virtual returns (uint256);

    /// @notice Gets the underlying token balance.
    /// @dev This function should be overridden by derived contracts.
    /// @return The underlying token balance.
    function underlyingTokenBalance() public view virtual returns (uint256);
}
