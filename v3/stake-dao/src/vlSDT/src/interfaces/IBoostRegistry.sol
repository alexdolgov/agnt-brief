// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// @notice Interface for vlSDT boost delegation registry.
interface IBoostRegistry {
    // Events
    event Boost(address indexed delegator, address indexed recipient, uint256 amount, uint256 expiry);
    event OperatorSet(address indexed delegator, address indexed operator, bool approved);

    // Errors
    error ZERO_ADDRESS();
    error ZERO_AMOUNT();
    error INVALID_EXPIRY();
    error INSUFFICIENT_BALANCE();
    error NOT_OPERATOR();

    /// @notice Create a boost delegation.
    function boost(address delegator, uint256 amount, uint256 endtime, address recipient) external;

    /// @notice Get delegable balance for an account.
    function delegableBalance(address account) external view returns (uint256);

    /// @notice Get operator approval and delegable balance in a single call.
    /// @param delegator The delegator address.
    /// @param operator The operator address.
    /// @return approved True if operator is approved for delegator.
    /// @return available Delegable balance for delegator.
    function operatorAndDelegableBalance(address delegator, address operator)
        external
        view
        returns (bool approved, uint256 available);

    /// @notice Check if an address is approved operator for delegator.
    function isOperator(address delegator, address operator) external view returns (bool);

    /// @notice Set operator approval.
    function setOperator(address operator, bool approved) external;

    /// @notice Get total active amount delegated out by user.
    function delegatedOut(address user) external view returns (uint256);

    /// @notice Get total active amount delegated in to user.
    function delegatedIn(address user) external view returns (uint256);

    /// @notice Checkpoint a user's delegated and received points.
    function checkpointUser(address user) external;

    /// @notice Maximum delegation duration in weeks.
    function MAX_DURATION_WEEKS() external view returns (uint256);
}
