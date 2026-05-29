// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.28;

/**
 * @title AnnualFees
 * @notice This abstract contract implements an annual fee mechanism.
 * @dev Tracks the time since the last operation and calculates fees to be minted periodically
 * based on the annual fee rate. Fees are minted to the fee receiver as defined in the BundleStorage contract.
 * @author Swarm
 */
abstract contract AnnualFees {
    /// @notice The timestamp of the last operation (deposit, withdraw) involving this bundle.
    uint256 public lastOperationTimestamp = block.timestamp;

    /**
     * @notice Updates the `lastOperationTimestamp` to the current block timestamp.
     * @dev This function should be called whenever a deposit or withdrawal occurs.
     */
    function _updateLastOperationTimestamp() internal virtual {
        lastOperationTimestamp = block.timestamp;
    }

    /**
     * @notice Updates the annual fee rate and mints the corresponding fee amount.
     * @dev This function calculates the proportional fee based on the annual fee percentage, the total supply,
     * and the time elapsed since the last operation. The calculated fee is then minted to the fee receiver.
     *
     * @param annualFeePercent The annual fee rate in percentage (e.g., 2 means 2% per year).
     * @param totalSupply The current total supply of the asset being tracked.
     * @param decimals The number of decimals used for precision in calculations.
     */
    function _updateAnnualFeesRate(uint256 annualFeePercent, uint256 totalSupply, uint8 decimals) internal virtual {
        // If no fee is set, exit early.
        if (annualFeePercent == 0) {
            return;
        }

        // Calculate time passed since the last operation.
        uint256 secondsSinceLastOperation = block.timestamp - lastOperationTimestamp;
        uint256 toMint = 0;

        if (secondsSinceLastOperation > 0) {
            uint256 ratePerSecond;
            uint256 rateToYear;
            uint256 _decimals = 10 ** decimals;
            uint256 oneYear = 365 days;
            uint256 _totalSupply = totalSupply;

            // Assembly block to handle fixed-point math calculations for fee minting.
            assembly {
                // Calculate the annual fee rate per second and apply the elapsed time.
                ratePerSecond := mul(_totalSupply, div(mul(annualFeePercent, _decimals), 100))
                rateToYear := div(ratePerSecond, oneYear)
                toMint := div(add(mul(rateToYear, secondsSinceLastOperation), sub(_decimals, 1)), _decimals)
            }
        }

        // Mint the calculated fee to the fee receiver and update the last operation timestamp.
        if (toMint > 0) {
            _doMint(toMint);
        }
    }

    /**
     * @notice Internal function to mint the calculated fee.
     * @dev This function should be implemented in derived contracts to handle minting logic.
     *
     * @param toMint The amount of tokens to mint as fees.
     */
    function _doMint(uint256 toMint) internal virtual {}
}
