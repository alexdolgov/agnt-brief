// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IPairState {
    /// @notice The contract that deployed the Pair, which must adhere to the IFactory interface
    /// @return address The contract address
    function factory() external view returns (address);

    /// @notice The first of the two tokens of the Pair, sorted by address
    /// @return address The token contract address
    function token0() external view returns (address);

    /// @notice The second of the two tokens of the Pair, sorted by address
    /// @return address The token contract address
    function token1() external view returns (address);

    /// @notice Fee associated to the Pair instance
    /// @return uint16 Fee
    function fee() external view returns (uint16);

    /// @notice The LP tokens total circulating supply
    /// @return uint Total LP tokens
    function totalSupply() external view returns (uint256);

    /// @notice The Pair's tokens cumulated fees
    /// @return uint Total protocol tokens
    function protocolTokenReserve() external view returns (uint256);
}
