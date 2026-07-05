// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @notice Interface for vlSDT boost delegation registry.
interface IvlBoost is IERC20Metadata {
    // Events
    event Boost(address indexed delegator, address indexed recipient, uint256 amount, uint256 expiry);
    event OperatorSet(address indexed delegator, address indexed operator, bool approved);

    // Errors
    error ZERO_ADDRESS();
    error ZERO_AMOUNT();
    error INVALID_EXPIRY();
    error INSUFFICIENT_BALANCE();
    error NOT_OPERATOR();
    error NON_TRANSFERABLE();
    error SELF_DELEGATION();

    /// @notice Create a boost delegation.
    function boost(address delegator, uint256 amount, uint256 endtime, address recipient) external;

    /// @notice Get delegable balance for an account.
    function delegableBalance(address account) external view returns (uint256);

    /// @notice Check if an address is approved operator for delegator.
    function isOperator(address delegator, address operator) external view returns (bool);

    /// @notice Set operator approval.
    function setOperator(address operator, bool approved) external;

    /// @notice Get total active amount delegated out by user.
    function delegatedOut(address user) external view returns (uint256);

    /// @notice Get total active amount delegated in to user.
    function delegatedIn(address user) external view returns (uint256);

    /// @notice Get adjusted balance (same as balanceOf, for veBoost proxy compatibility).
    function adjusted_balance_of(address account) external view returns (uint256);

    /// @notice Checkpoint a user's delegated and received points.
    function checkpointUser(address user) external;

    /// @notice Maximum delegation duration in weeks.
    function MAX_DURATION_WEEKS() external view returns (uint256);
}
