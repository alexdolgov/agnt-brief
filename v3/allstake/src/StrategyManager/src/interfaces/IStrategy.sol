// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStrategy is IERC20 {
    struct WithdrawalRequest {
        address user;
        uint256 shares;
        uint256 timestamp;
        bool pending;
    }

    /**
     * @notice Deposit ERC20 tokens into this strategy.
     *         This will mint receipt tokens to user
     * @dev only callable by StrategyManager
     * @param amount amount of token to deposit
     * @param user user address who interacts with StrategyManager
     * @return shares the number of newly issued shares
     */
    function deposit(uint256 amount, address user) external returns (uint256);

    /**
     * @notice Start queueing withdraw process
     * @dev only callable by StrategyManager
     * @dev need to approve shares of receipt tokens to this contract first
     * @param shares number of shares to withdraw
     * @param user user address who interacts with StrategyManager
     * @return requestId
     */
    function queueWithdraw(
        uint256 shares,
        address user
    ) external returns (uint32);

    /**
     * @notice Complete queue withdraw process.
     *         This will transfer all withdrawable tokens to the user
     *         and burn corresponding receipt tokens.
     * @dev only callable by StrategyManager
     * @param user user address who is going to withdraw tokens
     * @param minWithdrawDelay minimum withdraw delay from StrategyManager
     * @param requestIds list of request IDs to withdraw from
     * @return amount actual amount of token totally withdrawed
     */
    function completeWithdraw(
        address user,
        uint256 minWithdrawDelay,
        uint32[] calldata requestIds
    ) external returns (uint256);

    /**
     * @notice Set the withdraw delay
     * @dev can only be called by StrategyManager
     * @param delay withdraw delay in seconds
     */
    function setWithdrawDelay(uint256 delay) external;

    /**
     * @notice Set the minimum deposit amount
     * @dev can only be called by StrategyManager
     * @param amount min deposit amount
     */
    function setMinDeposit(uint256 amount) external;

    /// @notice Returns the address of ERC20 token this strategy supports
    function underlying() external view returns (IERC20);

    /// @notice Returns withdrawal request by ID
    function withdrawalRequests(
        uint256
    )
        external
        view
        returns (address user, uint256 shares, uint256 timestamp, bool pending);

    /// @notice Convert underlying token balance to number of shares
    function underlyingBalanceToShares(
        uint256 amount
    ) external view returns (uint256);

    /// @notice Convert number of shares to balance of underlying token
    function sharesToUnderlyingBalance(
        uint256 amount
    ) external view returns (uint256);

    /// @notice Returns the address of strategy manager
    function strategyManager() external view returns (address);

    /// @notice Returns minimum amount to deposit
    function minDeposit() external view returns (uint256);

    /// @notice Returns the withdraw delay length in seconds
    function withdrawDelay() external view returns (uint256);

    /// @notice Returns the number of pending withdrawal requests for a given user
    function userPendingWithdrawalRequestLen(
        address user
    ) external view returns (uint32);

    /// @notice Query pending withdrawal requests for a given user
    function userPendingWithdrawalRequestIds(
        address user,
        uint32 offset,
        uint32 limit
    ) external view returns (uint32[] memory);
}
