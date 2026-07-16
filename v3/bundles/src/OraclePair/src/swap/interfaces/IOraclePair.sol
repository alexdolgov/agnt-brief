// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "../Oracle.sol";
import "./IBase.sol";

interface IOraclePair is IBase {
    /// @notice Initialize the pair
    /// @dev Can only be called by the factory
    function initialize(address, address, uint16) external;

    /// @notice The Oracle instance associated to the Pair
    /// @return Oracle Oracle instance
    function pairOracle() external view returns (address);

    /// @notice Average token0 price depending on the Oracle's period
    /// @return uint token0 Average price
    function price1CumulativeLast() external view returns (uint256);
}
