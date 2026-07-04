// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {IStrategyBank} from "./IStrategyBank.sol";

/**
 * @title IStrategyAccount
 * @author GoldLink
 *
 * @dev Base interface for the strategy account.
 */
interface IStrategyAccount {
    // ============ External Functions ============

    /// @dev Execute a borrow against the `strategyBank`.
    function executeBorrow(uint256 loan) external returns (uint256 loanNow);

    /// @dev Execute repaying a loan for an existing strategy bank.
    function executeRepayLoan(
        uint256 repayAmount
    ) external returns (uint256 loanNow);

    /// @dev Execute withdrawing collateral for an existing strategy bank.
    function executeWithdrawCollateral(
        address onBehalfOf,
        uint256 collateral,
        bool useSoftWithdrawal
    ) external returns (uint256 collateralNow);

    /// @dev Execute add collateral for the strategy account.
    function executeAddCollateral(
        uint256 collateral
    ) external returns (uint256 collateralNow);

    /// @dev Initiates an account liquidation, checking to make sure that the account's health score puts it in the liquidable range.
    function executeInitiateLiquidation() external;

    /// @dev Processes a liquidation, checking to make sure that all assets have been liquidated, and then notifying the `StrategyBank` of the liquidated asset's for accounting purposes.
    function executeProcessLiquidation()
        external
        returns (uint256 premium, uint256 loanLoss);

    /**
     * @notice Withdraws ERC-20 assets to the specified receiver.
     * Can only be called when the account has no active loan.
     * @dev Emits the `WithdrawErc20Asset()` event.
     * @param receiever The address to send the assets to.
     * @param tokens    The ERC-20 tokens to be withdrawn.
     * @param amounts   The ERC-20 amounts to be withdrawn.
     */
    function executeWithdrawErc20Assets(
        address receiever,
        IERC20[] calldata tokens,
        uint256[] calldata amounts
    ) external;

    /// @dev Get the positional value of the strategy account.
    function getAccountValue() external view returns (uint256);

    /// @dev Get the owner of this strategy account.
    function getOwner() external view returns (address owner);

    /// @dev Get address of strategy bank.
    function STRATEGY_BANK() external view returns (IStrategyBank strategyBank);

    /// @dev Get the GoldLink protocol asset.
    function STRATEGY_ASSET() external view returns (IERC20 strategyAsset);
}
