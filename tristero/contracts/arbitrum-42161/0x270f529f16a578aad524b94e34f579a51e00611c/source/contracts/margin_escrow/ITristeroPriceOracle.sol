// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ITristeroPriceOracle {
    /// @notice Get the price of baseToken denominated in quoteToken.
    /// @dev Price format: 18-decimal fixed point (WAD).
    ///      A return value of 2000e18 means 1 unit of baseToken = 2000 units of quoteToken.
    ///      "Unit" means one whole token in human-readable terms (1 ETH, 1 USDC, etc.),
    ///      NOT the smallest on-chain denomination (wei, micro-USDC).
    ///      Example: getPrice(WETH, USDC) = 2000e18 → 1 ETH = 2000 USDC.
    /// @param baseToken The token whose price is being queried
    /// @param quoteToken The token in which the price is denominated
    /// @param extraData Implementation-specific data (e.g. Pyth update payloads). Empty if not needed.
    /// @return price The pair price scaled by 1e18
    function getPrice(address baseToken, address quoteToken, bytes calldata extraData) external payable returns (uint256 price);
}
