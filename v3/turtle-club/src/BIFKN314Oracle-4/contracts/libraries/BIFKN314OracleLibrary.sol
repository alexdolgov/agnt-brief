// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interfaces/IERC314.sol";

// library with helper methods for oracles that are concerned with computing average prices
library BIFKN314OracleLibrary {
    uint private constant Q112 = 2 ** 112; // Scaling factor for fixed-point math

    error NoReserves(address token);

    /**
     * @notice Retrieves the current block timestamp.
     * @return The current block timestamp.
     */
    function currentBlockTimestamp() internal view returns (uint32) {
        return uint32(block.timestamp % 2 ** 32);
    }

    /**
     * @notice Calculates the current cumulative prices for a given token.
     * @dev This function retrieves the last cumulative prices and reserves from the token contract.
     *      If time has elapsed since the last update, it mocks the accumulated price values.
     * @param token The address of the token for which to calculate the cumulative prices.
     * @return price0Cumulative The cumulative price of token0.
     * @return price1Cumulative The cumulative price of token1.
     * @return blockTimestamp The current block timestamp.
     * @custom:error NoReserves if either reserve0 or reserve1 is zero.
     */
    function currentCumulativePrices(
        address token
    )
        internal
        view
        returns (
            uint256 price0Cumulative,
            uint256 price1Cumulative,
            uint32 blockTimestamp
        )
    {
        blockTimestamp = currentBlockTimestamp();
        price0Cumulative = IERC314(token).price0CumulativeLast();
        price1Cumulative = IERC314(token).price1CumulativeLast();

        // if time has elapsed since the last update on the pair, mock the accumulated price values
        (uint256 reserve0, uint256 reserve1) = IERC314(token).getReserves();

        if (reserve0 == 0 || reserve1 == 0) revert NoReserves(token);

        uint32 blockTimestampLast = IERC314(token).blockTimestampLast();

        if (blockTimestampLast != blockTimestamp) {
            uint32 timeElapsed = blockTimestamp - blockTimestampLast; // Overflow is desired

            // Counterfactual for price0Cumulative
            price0Cumulative += ((reserve1 * Q112) / reserve0) * timeElapsed;

            // Counterfactual for price1Cumulative
            price1Cumulative += ((reserve0 * Q112) / reserve1) * timeElapsed;
        }
    }
}
