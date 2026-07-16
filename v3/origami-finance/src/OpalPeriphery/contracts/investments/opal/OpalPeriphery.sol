pragma solidity ^0.8.19;
// SPDX-License-Identifier: AGPL-3.0-or-later
// Origami (investments/opal/OpalPeriphery.sol)

import { IOrigamiTokenizedBalanceSheetVault } from "contracts/interfaces/common/IOrigamiTokenizedBalanceSheetVault.sol";
import { IOpalPeriphery } from "contracts/interfaces/investments/opal/IOpalPeriphery.sol";
import { IOpalAdapter } from "contracts/interfaces/investments/opal/adapters/IOpalAdapter.sol";
import { CommonEventsAndErrors } from "contracts/libraries/CommonEventsAndErrors.sol";

/// @title Origami Periphery - Views and onchain checks on Opal state
contract OpalPeriphery is IOpalPeriphery {
    /// @inheritdoc IOpalPeriphery
    function validateAdapterBalanceSheetInRange(
        address adapterAddress,
        AmountRange[] calldata assetsRange,
        AmountRange[] calldata liabilitiesRange
    ) external view override {
        IOpalAdapter adapter = IOpalAdapter(adapterAddress);
        (uint256[] memory bsAssets, uint256[] memory bsLiabilities) = adapter.balanceSheet();
        if (bsAssets.length != assetsRange.length || bsLiabilities.length != liabilitiesRange.length) {
            revert CommonEventsAndErrors.InvalidParam();
        }

        uint256 bsValue;
        AmountRange calldata r;
        for (uint256 i; i < assetsRange.length; ++i) {
            bsValue = bsAssets[i];
            r = assetsRange[i];
            if (bsValue < r.min || bsValue > r.max) {
                revert OutsideValidRange(
                    IOrigamiTokenizedBalanceSheetVault.AssetOrLiability.ASSET, i, bsValue, r.min, r.max
                );
            }
        }

        for (uint256 i; i < liabilitiesRange.length; ++i) {
            bsValue = bsLiabilities[i];
            r = liabilitiesRange[i];
            if (bsValue < r.min || bsValue > r.max) {
                revert OutsideValidRange(
                    IOrigamiTokenizedBalanceSheetVault.AssetOrLiability.LIABILITY, i, bsValue, r.min, r.max
                );
            }
        }
    }
}
