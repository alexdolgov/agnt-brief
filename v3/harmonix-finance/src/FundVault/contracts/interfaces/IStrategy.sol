// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

/**
 * @title IStrategy
 * @notice Interface that all Harmonix strategies must implement.
 * @dev FundVault calls totalAssets() to query the real-time value of assets
 *      managed by this strategy, denominated in the strategy's underlying asset token.
 */
interface IStrategy {
    /**
     * @notice Returns the total amount of the underlying asset managed by this strategy.
     * @dev Must return the value in the same token and decimals as the asset deployed to it.
     *      Includes principal + any unrealized yield/losses.
     * @return The total asset amount managed by this strategy.
     */
    function totalAssets() external view returns (uint256);

    /**
     * @notice Returns the address of the underlying asset token this strategy manages.
     * @return The ERC-20 asset token address.
     */
    function asset() external view returns (address);

    /**
     * @notice Returns a human-readable description of this strategy.
     * @return A short string describing the strategy's purpose.
     */
    function description() external view returns (string memory);

    /**
     * @notice Withdraws `amount` of the underlying asset and transfers it to FundVault.
     * @dev Called exclusively by FundVault.deallocate(). The strategy transfers
     *      exactly `amount` tokens to `msg.sender` (FundVault).
     *      Access control: production strategies should extend `HaBaseStrategy`, which
     *      enforces the FundVault-only guard automatically via its `onlyFundVault` modifier.
     *      Direct implementers of this interface MUST still restrict calls to the registered
     *      FundVault address.
     * @param amount The amount of the underlying asset to withdraw.
     */
    function withdraw(uint256 amount) external;
}
