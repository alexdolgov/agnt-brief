// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "solady/src/tokens/ERC20.sol";
import "./IAccount.sol";

abstract contract InternalAccountEvents {
    /// @notice The owner made a deposit of `amount` into `strategy`
    event StrategyDeposit(address strategy, uint256 amount);
    /// @notice The owner withdrew `amount` from `strategy`
    event StrategyWithdraw(address strategy, uint256 amount);
    /// @notice The deposits into `strategy` have been forcibly withdrawn and `receveredAmount` was returned
    /// @dev When strategy == address(0) it indicates a liquidation of the balance in the account
    event StrategyLiquidated(address indexed strategy, uint256 recoveredAmount);
}

interface IInternalAccount is IAccount {
    function strategyDeposit(address strategy, uint256 amount) external payable returns (uint256 receivedShares);
    function strategyWithdraw(address strategy, uint256 amount) external payable returns (uint256 receivedAssets);
    function strategyWithdrawAndRepay(
        address strategy,
        uint256 shares,
        bytes memory data
    )
        external
        payable
        returns (uint256 receivedAssets);
    function liquidateStrategy(
        address strategy,
        address recipient,
        uint256 minAmount,
        bytes memory data
    )
        external
        payable
        returns (uint256 receivedAssets);
}
