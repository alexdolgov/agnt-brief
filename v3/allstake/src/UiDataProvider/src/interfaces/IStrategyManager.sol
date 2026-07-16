// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IStrategy.sol";

interface IStrategyManager {
    event StrategyCreated(
        IStrategy strategy,
        IERC20 token,
        uint256 withdrawDelay,
        uint256 minDeposit
    );

    event Deposit(
        IStrategy strategy,
        address user,
        uint256 amount,
        uint256 shares
    );

    event QueueWithdraw(
        IStrategy strategy,
        address user,
        uint256 shares,
        uint32 id
    );

    event CompleteWithdraw(
        IStrategy strategy,
        address user,
        uint256 amount,
        uint32[] requestIds
    );

    event StrategyWithdrawDelayUpdated(IStrategy strategy, uint256 delay);

    event MinWithdrawDelayUpdated(uint256 delay);

    event StrategyMinDepositUpdated(IStrategy strategy, uint256 amount);

    event StrategyEnabled(
        IStrategy strategy,
        bool depositEnabled,
        bool withdrawEnabled
    );

    /**
     * @notice Create a new strategy instance
     * @dev can only be called by owner
     * @param token strategy token address
     * @param withdrawDelay strategy withdraw delay in sec
     * @param minDeposit minimum amount to deposit
     * @param receiptTokenName receipt token name
     * @param receiptTokenSymbol receipt token symbol
     * @return address strategy address
     */
    function createStrategy(
        IERC20 token,
        uint256 withdrawDelay,
        uint256 minDeposit,
        string calldata receiptTokenName,
        string calldata receiptTokenSymbol
    ) external returns (IStrategy);

    /**
     * @notice Deposit ERC20 tokens into a specific strategy
     * @param strategy strategy address
     * @param amount amount to deposit
     * @return shares the number of newly issued shares
     */
    function depositIntoStrategy(
        IStrategy strategy,
        uint256 amount
    ) external returns (uint256);

    /**
     * @notice Start queueing withdraw process for a strategy
     * @param strategy strategy address
     * @param shares shares amount to withdraw
     * @return requestId
     */
    function queueWithdrawFromStrategy(
        IStrategy strategy,
        uint256 shares
    ) external returns (uint32);

    /**
     * @notice Complete queued withdraw
     * @param strategy strategy address
     * @param requestIds list of request IDs to withdraw from
     * @return amount actual amount of token totally withdrawed
     */
    function completeWithdrawFromStrategy(
        IStrategy strategy,
        uint32[] calldata requestIds
    ) external returns (uint256);

    /**
     * @notice Update the minimum withdraw delay
     * @dev can only be called by owner
     * @param delay new withdraw delay in seconds
     */
    function setMinWithdrawDelay(uint256 delay) external;

    /**
     * @notice Update the withdraw delay of a given strategy
     * @dev can only be called by owner
     * @param delay new withdraw delay in seconds
     */
    function setStrategyWithdrawDelay(
        IStrategy strategy,
        uint256 delay
    ) external;

    /**
     * @notice Update the minimum deposit amount of a given strategy
     * @dev can only be called by owner
     * @param amount min deposit amount
     */
    function setStrategyMinDeposit(IStrategy strategy, uint256 amount) external;

    /**
     * @notice Enable/disable deposit or withdraw for a given strategy
     * @dev can only be called by owner
     * @param strategy strategy address
     * @param depositEnabled whether deposit is enabled or not
     * @param withdrawEnabled whether withdraw is enabled or not
     */
    function enableStrategy(
        IStrategy strategy,
        bool depositEnabled,
        bool withdrawEnabled
    ) external;

    /// @notice Access all supported strategies
    function strategies(uint256) external view returns (IStrategy);

    /// @notice List strategies
    function listStrategies(
        uint256 offset,
        uint256 limit
    ) external view returns (IStrategy[] memory);

    /// @notice Returns the length of strategies array
    function strategiesLen() external view returns (uint256);

    /// @notice Returns the minimum withdraw delay in seconds
    function minWithdrawDelay() external view returns (uint256);

    /// @notice Returns whether deposit is enabled on a given strategy
    function depositEnabled(IStrategy strategy) external view returns (bool);

    /// @notice Returns whether withdraw is enabled on a given strategy
    function withdrawEnabled(IStrategy strategy) external view returns (bool);
}
