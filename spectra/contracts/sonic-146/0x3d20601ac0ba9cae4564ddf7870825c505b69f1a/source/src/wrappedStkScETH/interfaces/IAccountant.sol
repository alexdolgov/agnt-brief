// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IAccountant {
    /**
     * @dev Returns the current exchange rate
     */
    function getRateInQuoteSafe(address quote) external view returns (uint256 rateInQuote);
}
