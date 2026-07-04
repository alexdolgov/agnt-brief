// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IAccountant {
    /**
     * @dev Returns the rate of the token.
     * @param quote The address of the quote currency.
     * @return rateInQuote The rate of the token.
     */
    function getRateInQuoteSafe(address quote) external view returns (uint256 rateInQuote);
}
