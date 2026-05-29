//SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.26;

/**
 * @title IBundleStorage
 * @notice This contract manages the storage and their associated fees.
 * @dev Handles fee management.
 * @author Swarm
 */
interface IBundleStorage {
    /**
     * @notice Retrieves the maximum allowed array size.
     * @return The maximum allowed array size.
     */
    function maxArraySize() external view returns (uint256);

    /// @notice Retrieves the current percentage to dissolve a bundle.
    /// @return The percentage to dissolve a bundle.
    function dissolvePercentage() external view returns (uint256);

    /**
     * @notice Retrieves the current fee receiver address.
     * @return The address of the fee receiver.
     */
    function feeReceiver() external view returns (address);

    /**
     * @notice Retrieves the current deposit fee percentage.
     * @return The deposit fee percentage.
     */
    function depositFeePercent() external view returns (uint256);

    /**
     * @notice Retrieves the current withdrawal fee percentage.
     * @return The withdrawal fee percentage.
     */
    function withdrawalFeePercent() external view returns (uint256);
}
