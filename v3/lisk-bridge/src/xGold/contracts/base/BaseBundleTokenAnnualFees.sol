//SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.26;

import { IBaseBundleTokenAnnualFees } from "../interfaces/IBaseBundleTokenAnnualFees.sol";
import { BaseBundleToken, Asset } from "./BaseBundleToken.sol";

/**
 * @title BaseBundleTokenWithAnnualFees
 * @notice This abstract contract extends the BaseBundleToken functionality by implementing an annual fee mechanism.
 * @dev Tracks the time since the last operation and calculates fees to be minted periodically based on the annual fee rate.
 * Fees are minted to the fee receiver as defined in the BundleStorage contract.
 * @author Swarm
 */
abstract contract BaseBundleTokenAnnualFees is BaseBundleToken {
    /// @notice The timestamp of the last operation (deposit, withdraw) involving this bundle.
    uint256 public lastOperationTimestamp = block.timestamp;

    /**
     * @notice Internal function to deposit assets into the bundle.
     * @dev Overrides the `_depositAssets` function from BaseBundleToken to update the `lastOperationTimestamp`.
     * @param _assets An array of `Asset` structs representing the assets to be deposited.
     */
    function _depositAssets(Asset[] calldata _assets) internal virtual override {
        super._depositAssets(_assets);
        lastOperationTimestamp = block.timestamp;
    }

    /**
     * @notice Internal function to withdraw assets from the bundle.
     * @dev Overrides the `_withdrawAssets` function from BaseBundleToken to update the `lastOperationTimestamp`.
     * @param _assets An array of `Asset` structs representing the assets to be withdrawn.
     */
    function _withdrawAssets(Asset[] calldata _assets) internal virtual override {
        super._withdrawAssets(_assets);
        lastOperationTimestamp = block.timestamp;
    }

    /**
     * @notice Internal function to update the annual fee rate and mint the corresponding fee amount.
     * @dev Calculates the fee based on the annual rate from the BundleStorage and mints tokens to the fee receiver.
     * It uses the time passed since the last operation to compute the proportional fee.
     */
    function _updateAnnualFeesRate() internal virtual {
        uint256 rate = IBaseBundleTokenAnnualFees(bundleStorage).annualFeePercent();

        // If no fee is set, exit early.
        if (rate == 0) {
            return;
        }

        // Calculate time passed since the last operation.
        uint256 secondsSinceLastOperation = block.timestamp - lastOperationTimestamp;
        uint256 toMint = 0;

        if (secondsSinceLastOperation > 0) {
            uint256 ratePerSecond;
            uint256 rateToYear;
            uint256 _decimals = 10 ** decimals();
            uint256 oneYear = 365 days;
            uint256 _totalSupply = totalSupply();

            // Assembly block to handle fixed-point math calculations for fee minting.
            assembly {
                ratePerSecond := mul(_totalSupply, div(mul(rate, _decimals), 100))
                rateToYear := div(ratePerSecond, oneYear)
                toMint := div(add(mul(rateToYear, secondsSinceLastOperation), sub(_decimals, 1)), _decimals)
            }
        }

        // Mint the calculated fee to the fee receiver and update the last operation timestamp.
        if (toMint > 0) {
            lastOperationTimestamp = block.timestamp;
            _mint(IBaseBundleTokenAnnualFees(bundleStorage).feeReceiver(), toMint);
        }
    }
}
