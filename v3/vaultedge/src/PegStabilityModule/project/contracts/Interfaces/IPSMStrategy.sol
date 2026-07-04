// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

/**
 * @title IPSMStrategy
 * @author Vaultedge
 * @notice Interface for a PSM-owned strategy that deploys the peg token into an external venue.
 *         Implementations MUST restrict `deposit` and `withdraw` to be callable only by the bound PSM.
 *         The `underlying` getter SHOULD return the exact ERC20 token accepted by the strategy and MUST
 *         match the PSM's `pegToken`. The optional `psm` getter SHOULD return the bound PSM address when
 *         available, or address(0) when not enforced by the implementation.
 */
interface IPSMStrategy {
    /// @notice Deposit stablecoin into the strategy
    /// @dev This function must be onlyPSM
    /// @param _depositAmount The amount of stablecoin to deposit
    function deposit(uint256 _depositAmount) external;

    /// @notice Withdraw stablecoin from the strategy
    /// @dev This function must be onlyPSM
    /// @param _withdrawAmount The amount of stablecoin to withdraw
    function withdraw(uint256 _withdrawAmount) external;

    /// @notice Get the total holdings of the strategy in units of `underlying()`
    /// @return holdingAmount The total holdings of the strategy
    function totalHoldings() external view returns (uint256 holdingAmount);

    /// @notice Returns the ERC20 token address this strategy accepts (should match the PSM peg token)
    function underlying() external view returns (address token);
}
