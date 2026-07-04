// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../interfaces/IStrategyManager.sol";

interface IUiDataProvider {
    struct StrategyData {
        address strategyAddress;
        address token;
        uint256 minDepositAmount;
        uint256 strategyTotalShares;
        uint256 minWithdrawDelay;
        uint256 strategyWithdrawDelay;
    }

    struct UserStrategyData {
        address user;
        address strategy;
        address token;
        uint256 userShares;
        uint256 userBalance;
    }

    struct StrategyTokenBalance {
        address strategy;
        address token;
        uint256 balance;
    }

    struct WithdrawalRequestData {
        uint32 id;
        address user;
        uint256 shares;
        uint256 timestamp;
        bool pending;
    }

    /**
     * @notice Returns strategy related data
     * @dev The returned strategy is the first in strategies list whose underlying token matches the given token address
     * @param strategyManager strategy manager address
     * @param token ERC20 token address
     */
    function strategyDataByToken(
        IStrategyManager strategyManager,
        address token
    ) external view returns (StrategyData memory);

    /**
     * @notice Returns user deposited data in a strategy
     * @param strategy strategy address
     * @param user user address
     */
    function userStrategyData(
        IStrategy strategy,
        address user
    ) external view returns (UserStrategyData memory);

    /// @notice Returns the number of pending withdrawal requests for a given user in a strategy
    function userPendingWithdrawalRequestLen(
        IStrategy strategy,
        address user
    ) external view returns (uint32);

    /**
     * @notice Returns the list of pending withdrawal request for a user
     * @dev the number of all pending withdrawal requests could be found by
     *      `userPendingWithdrawalRequestLen()`
     * @param strategy strategy address
     * @param user user address
     * @param offset pagination offset
     * @param limit pagination limit
     */
    function userQueueWithdrawalRequests(
        IStrategy strategy,
        address user,
        uint32 offset,
        uint32 limit
    ) external view returns (WithdrawalRequestData[] memory);

    /**
     * @notice Returns token balance of each strategy
     * @param strategyManager strategy manager address
     */
    function strategiesTokenBalance(
        IStrategyManager strategyManager
    ) external view returns (StrategyTokenBalance[] memory);
}
