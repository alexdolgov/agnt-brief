// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

/// @title IPerformanceFees
/// @notice Interface for the PerformanceFees vault submodule.
interface IPerformanceFees {
    /// @notice Address to receive collected performance fees.
    function performanceFeeRecipient() external view returns (address);

    /// @notice Performance fee charged on vault performance, in parts per million.
    function performanceFeeE6() external view returns (uint256);

    /// @notice Share of newly-minted performance fee shares that go to the `ANGSTROM_VAULT_FACTORY`.
    function performanceFeeProtocolFractionE6() external view returns (uint24);

    /// @notice Length of epoch for performance calculations.
    function epochLengthSeconds() external view returns (uint256);

    /// @notice Timestamp at which the current epoch ends.
    /// @dev Technically epoch rollover will happen on the first update at or after this timestamp.
    function epochEndTimestamp() external view returns (uint256);

    /// @notice Virtual shares issued for potentially paying performance fees.
    /// @dev Before the end of the epoch, these virtual shares will be burnt to cover a share (equal to
    /// `performanceFeeE6 / FACTOR_E6`) of any intra-epoch losses.
    /// @dev On epoch rollover, existing `provisionalShares` are converted to real shares owned by the
    /// `performanceFeeRecipient`.
    function provisionalShares() external view returns (uint256);

    /// @notice Virtual debt issued for share of intra-epoch losses (equal to
    /// `performanceFeeE6 / FACTOR_E6`) that cannot be covered by `provisionalShares`.
    /// @dev This debt is reduced prior to incrementing `provisionalShares`.
    /// @dev At epoch rollover, `performanceFeeDebt` is zeroed out.
    /// @dev Non-zero `performanceFeeDebt` and non-zero `provisionalShares` should *never* coexist simultaneously.
    function performanceFeeDebt() external view returns (uint256);
}
