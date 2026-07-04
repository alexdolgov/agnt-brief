// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Aegis Vault Derived State Interface
/// @notice Defines read-only functions that derive state information from the Aegis vault
interface IAegisVaultDerivedState {
    /// @notice Calculates the total quantity of deposit and target tokens owned by the Aegis vault across both underlying ICHI vaults
    ///         excluding any uncollected swap fees
    /// @return totalShares The total supply of Aegis vault shares
    /// @return depositTotal The total amount of deposit tokens in both ICHI vaults
    /// @return targetTotal The total amount of target tokens in both ICHI vaults
    function getTotalAmounts() external view returns (uint256 totalShares, uint256 depositTotal, uint256 targetTotal);

    /// @notice Retrieves the deposit vault position of the Aegis vault
    ///         excluding any uncollected swap fees
    /// @dev This function returns the amount of deposit vault shares the Aegis vault holds,
    ///      along with the corresponding amounts of deposit and target tokens
    /// @return depositShares The amount of deposit vault shares the Aegis vault holds
    /// @return depositAmount The amount of deposit tokens in the deposit vault position
    /// @return targetAmount The amount of target tokens in the deposit vault position
    function getDepositPosition() external view returns (uint256 depositShares, uint256 depositAmount, uint256 targetAmount);

    /// @notice Retrieves the target vault position of the Aegis vault
    ///         excluding any uncollected swap fees
    /// @dev This function returns the amount of target vault shares the Aegis vault holds,
    ///      along with the corresponding amounts of deposit and target tokens
    /// @return targetShares The amount of target vault shares the Aegis vault holds
    /// @return depositAmount The amount of deposit tokens in the target vault position
    /// @return targetAmount The amount of target tokens in the target vault position
    function getTargetPosition() external view returns (uint256 targetShares, uint256 depositAmount, uint256 targetAmount);

    /// @notice Retrieves the balance of a user in the Aegis vault
    /// @param account The address of the user
    /// @return aegisShares The quantity of Aegis vault shares that belong to the user
    /// @return depositAmount The current amount of deposit tokens represented by the user's Aegis shares
    /// @return targetAmount The current amount of target tokens represented by the user's Aegis shares
    function getUserBalance(address account) external view returns (uint256 aegisShares, uint256 depositAmount, uint256 targetAmount);
}
