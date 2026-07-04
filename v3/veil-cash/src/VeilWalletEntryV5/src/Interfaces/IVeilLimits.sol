// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title IVeilLimits
 * @author Veil Cash
 * @notice Interface for VeilLimits contract
 */
interface IVeilLimits {
    /// @dev Main function called by VeilWalletEntry to check and update limits
    function checkAndUpdateLimits(address depositor, uint256 amount) external;

    /// @dev Get current usage for an address
    function getCurrentUsage(address depositor) external view returns (uint256 globalUsed, uint256 addressUsed);

    /// @dev Get remaining limits for an address
    function getRemainingLimits(address depositor) external view returns (uint256 globalRemaining, uint256 addressRemaining);

    /// @dev Get current limits
    function globalDailyLimit() external view returns (uint256);
    function addressDailyLimit() external view returns (uint256);
} 