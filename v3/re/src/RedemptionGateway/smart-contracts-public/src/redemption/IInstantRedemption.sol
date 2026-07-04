// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/**
 * @title IInstantRedemption
 * @notice Interface for the "instant" redemption module invoked by {RedemptionGateway}.
 * @dev The concrete implementation should:
 * - Enforce KYC via an external registry.
 * - Enforce daily/global/user limits and fee logic.
 * - Transfer/burn shares and pull/withdraw payout tokens from the vault.
 *
 * All values are denominated as noted by the implementation; payout amounts are in payout-token units.
 */
interface IInstantRedemption {
    // Functions called by gateway
    function redeemFor(address user, uint256 shares, uint256 minPayout) external;
    function previewRedemption(address user, uint256 shares)
        external
        view
        returns (uint256 grossPayout, uint256 fee, uint256 netPayout, bool available);

    // View functions for status
    function paused() external view returns (bool);
    function getDailyRedemptions() external view returns (uint256 day, uint256 globalSpending);
    function getUserDailySpending(address user) external view returns (uint256);
}
