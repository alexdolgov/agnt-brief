// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/IUiDataProvider.sol";

contract UiDataProvider is IUiDataProvider {
    /// @inheritdoc IUiDataProvider
    function strategyDataByToken(
        IStrategyManager strategyManager,
        address token
    ) external view returns (StrategyData memory) {
        // find the first strategy that matches given token address
        IStrategy strategy;
        uint8 i;
        for (i = 0; i < strategyManager.strategiesLen(); i++) {
            IStrategy _strategy = strategyManager.strategies(i);
            if (address(_strategy.underlying()) == token) {
                strategy = _strategy;
                break;
            }
        }
        require(
            address(strategy) != address(0x0),
            "UiDataProvider: Strategy not found"
        );

        StrategyData memory data;
        data.strategyAddress = address(strategy);
        data.token = token;
        data.minDepositAmount = strategy.minDeposit();
        data.strategyTotalShares = strategy.totalSupply();
        data.minWithdrawDelay = strategyManager.minWithdrawDelay();
        data.strategyWithdrawDelay = strategy.withdrawDelay();

        return data;
    }

    /// @inheritdoc IUiDataProvider
    function userStrategyData(
        IStrategy strategy,
        address user
    ) external view returns (UserStrategyData memory) {
        UserStrategyData memory data;
        data.user = user;
        data.strategy = address(strategy);
        data.token = address(strategy.underlying());
        data.userShares = strategy.balanceOf(user);
        data.userBalance = strategy.sharesToUnderlyingBalance(data.userShares);
        return data;
    }

    /// @inheritdoc IUiDataProvider
    function userPendingWithdrawalRequestLen(
        IStrategy strategy,
        address user
    ) external view returns (uint32) {
        return strategy.userPendingWithdrawalRequestLen(user);
    }

    /// @inheritdoc IUiDataProvider
    function userQueueWithdrawalRequests(
        IStrategy strategy,
        address user,
        uint32 offset,
        uint32 limit
    ) external view returns (WithdrawalRequestData[] memory) {
        uint32[] memory ids = strategy.userPendingWithdrawalRequestIds(
            user,
            offset,
            limit
        );
        WithdrawalRequestData[] memory requests = new WithdrawalRequestData[](
            limit
        );
        uint32 i;
        for (i = 0; i < limit; i++) {
            (
                address _user,
                uint256 _shares,
                uint256 _timestamp,
                bool _pending
            ) = strategy.withdrawalRequests(ids[i]);
            requests[i].id = ids[i];
            requests[i].user = _user;
            requests[i].shares = _shares;
            requests[i].timestamp = _timestamp;
            requests[i].pending = _pending;
        }

        return requests;
    }

    /// @inheritdoc IUiDataProvider
    function strategiesTokenBalance(
        IStrategyManager strategyManager
    ) external view returns (StrategyTokenBalance[] memory) {
        uint256 len = strategyManager.strategiesLen();
        StrategyTokenBalance[] memory data = new StrategyTokenBalance[](len);

        uint256 i;
        for (i = 0; i < len; i++) {
            StrategyTokenBalance memory balance = data[i];
            IStrategy strategy = strategyManager.strategies(i);
            balance.strategy = address(strategy);
            balance.token = address(strategy.underlying());
            balance.balance = strategy.underlying().balanceOf(
                address(strategy)
            );
        }

        return data;
    }
}
