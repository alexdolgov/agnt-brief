// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ISOUStrategy.sol";

/**
 * @title ISOUDonationStrategy
 * @notice Interface for permissionless donation strategies
 * @dev Extends ISOUStrategy with donation-specific functions
 */
interface ISOUDonationStrategy is ISOUStrategy {
    // ============================================
    // EVENTS
    // ============================================

    event DonationCreated(
        uint256 indexed donationId,
        address indexed donor,
        address paymentToken,
        uint256 amount
    );

    event DonationCancelled(uint256 indexed donationId);

    // ============================================
    // DONATION FUNCTIONS
    // ============================================

    /**
     * @notice Create a new donation (permissionless - anyone can donate)
     * @param paymentToken Token to donate (must be registered in PriceOracle)
     * @param amount Amount to donate
     * @return donationId ID of the created donation
     */
    function createDonation(
        address paymentToken,
        uint256 amount
    ) external returns (uint256 donationId);

    /**
     * @notice Get donation information (alias for getDistributionInfo)
     * @param donationId Donation ID
     * @return donor Donor address
     * @return paymentToken Payment token address
     * @return totalAmount Total donation amount
     * @return totalClaimed Amount claimed so far
     * @return priceSnapshotId Price snapshot used
     * @return createdAt Creation timestamp
     * @return active Whether donation is active
     */
    function getDonationInfo(uint256 donationId) external view returns (
        address donor,
        address paymentToken,
        uint256 totalAmount,
        uint256 totalClaimed,
        bytes32 priceSnapshotId,
        uint256 createdAt,
        bool active
    );

    /**
     * @notice Get total donation count (alias for getDistributionCount)
     * @return count Total donation count
     */
    function getDonationCount() external view returns (uint256 count);

    /**
     * @notice Cancel a donation (admin only - for emergencies)
     * @param donationId Donation ID
     */
    function cancelDonation(uint256 donationId) external;
}
