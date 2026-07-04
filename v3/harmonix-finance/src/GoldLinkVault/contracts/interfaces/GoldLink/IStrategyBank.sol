// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

/**
 * @title IStrategyBank
 * @author GoldLink
 *
 * @dev Base interface for the strategy bank.
 */
interface IStrategyBank {
     /// @dev Strategy account assets and liabilities representing value in the strategy.
    struct StrategyAccountHoldings {
        // Collateral funds.
        uint256 collateral;
        // Loan capital outstanding.
        uint256 loan;
        // Last interest index for the strategy account.
        uint256 interestIndexLast;
    }

    /// @dev Update the minimum open health score for the strategy bank.
    function updateMinimumOpenHealthScore(
        uint256 newMinimumOpenHealthScore
    ) external;

    /// @dev Delegates reentrancy locking to the bank, only callable by valid strategy accounts.
    function acquireLock() external;

    /// @dev Delegates reentrancy unlocking to the bank, only callable by valid strategy accounts.
    function releaseLock() external;

    /// @dev Get interest from this contract for `msg.sender` which must
    /// be the `StrategyReserve` to then transfer out of this contract.
    function getInterestAndTakeInsurance(
        uint256 totalRequested
    ) external returns (uint256 interestToPay);

    /// @dev Processes a strategy account liquidation.
    function processLiquidation(
        address liquidator,
        uint256 availableAccountAssets
    ) external returns (uint256 premium, uint256 loanLoss);

    /// @dev Add collateral for a strategy account into the strategy bank.
    function addCollateral(
        address provider,
        uint256 collateral
    ) external returns (uint256 collateralNow);

    /// @dev Borrow funds from the `StrategyReserve` into the strategy bank.
    function borrowFunds(uint256 loan) external returns (uint256 loanNow);

    /// @dev Repay loaned funds for a holdings.
    function repayLoan(
        uint256 repayAmount,
        uint256 accountValue
    ) external returns (uint256 loanNow);

    /// @dev Withdraw collateral from the strategy bank.
    function withdrawCollateral(
        address onBehalfOf,
        uint256 requestedWithdraw,
        bool useSoftWithdrawal
    ) external returns (uint256 collateralNow);

    /// @dev Open a new strategy account associated with `owner`.
    function executeOpenAccount(
        address owner
    ) external returns (address strategyAccount);

    /// @dev Get withdrawable collateral such that it can be taken out while
    /// `minimumOpenHealthScore_` is still respected.
    function getWithdrawableCollateral(
        address strategyAccount
    ) external view returns (uint256 withdrawableCollateral);

    /// @dev Get a strategy account's holdings.
    function getStrategyAccountHoldings(
        address strategyAccount
    )
        external
        view
        returns (StrategyAccountHoldings memory strategyAccountHoldings);

    /// @dev Get strategy account's holdings after interest is paid.
    function getStrategyAccountHoldingsAfterPayingInterest(
        address strategyAccount
    ) external view returns (StrategyAccountHoldings memory holdings);

    function MINIMUM_COLLATERAL_BALANCE()
        external
        view
        returns (uint256);
}
