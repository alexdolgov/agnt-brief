// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IOracle {
    /**
    * @notice get the quote of the given amount of base token in the given quote token
    * @param inAmount the amount of base token to get the quote for
    * @param base the address of the base token
    * @param quote the address of the quote token(only support USD with 18 decimals)
    * @return the quote of the given amount of base token in the given quote token
     */
    function getQuote(uint256 inAmount, address base, address quote) external view returns (uint256);
}