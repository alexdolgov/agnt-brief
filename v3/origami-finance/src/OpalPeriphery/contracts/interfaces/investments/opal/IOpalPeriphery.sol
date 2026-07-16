pragma solidity ^0.8.4;

// SPDX-License-Identifier: AGPL-3.0-or-later
// Origami (interfaces/investments/opal/IOpalPeriphery.sol)

import { IOrigamiTokenizedBalanceSheetVault } from "contracts/interfaces/common/IOrigamiTokenizedBalanceSheetVault.sol";

/// @title Origami Periphery - Views and onchain checks on Opal state
interface IOpalPeriphery {
    struct AmountRange {
        uint256 min;
        uint256 max;
    }

    error OutsideValidRange(
        IOrigamiTokenizedBalanceSheetVault.AssetOrLiability kind,
        uint256 index,
        uint256 value,
        uint256 rangeMin,
        uint256 rangeMax
    );

    /// @notice Revert if any token in an Opal adapter's balance sheet is outside an expected range.
    /// @dev Will revert immediately upon finding the first token that is out of range, or if the
    /// range lengths differ from the adapter balance sheet
    function validateAdapterBalanceSheetInRange(
        address adapterAddress,
        AmountRange[] calldata assetsRange,
        AmountRange[] calldata liabilitiesRange
    ) external view;
}
