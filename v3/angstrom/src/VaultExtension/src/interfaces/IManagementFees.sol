// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

/// @title IManagementFees
/// @notice Interface for the ManagementFees vault submodule.
interface IManagementFees {
    /// @notice Address to receive collected management fees.
    function managementFeeRecipient() external view returns (address);

    /// @notice One plus the fraction of total assets that should accrue from management fees every second, scaled by
    /// FACTOR_E18. @dev Stored in this manner to support automatic compounding of fees, so that the amount of shares
    /// minted as management fees is ~independent of how often `_accrueManagementFees()` is invoked.
    function managementFeeAccrualBaseE18() external view returns (uint256);

    /// @notice Share of newly-minted management fee shares that go to the `ANGSTROM_VAULT_FACTORY`.
    function managementFeeProtocolFractionE6() external view returns (uint24);

    /// @notice UTC timestamp at which management fees were last accrued.
    function managementFeesAccruedUntil() external view returns (uint256);
}
