// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "./ISaleForge.sol";

/// @title ISaleProxy Interface
/// @notice Interface for the SaleProxy contract that provides a convenient interface for individual FlapSales
interface ISaleProxy {
    /// @notice Get the token address this proxy is associated with
    /// @return token Token address (immutable)
    function token() external view returns (address token);

    /// @notice Get the SaleForge contract address
    /// @return saleForge SaleForge contract address (immutable)
    function saleForge() external view returns (address saleForge);

    /// @notice Get sale information by calling SaleForge
    /// @return saleInfo Complete sale information from SaleForge
    function getSaleInfo() external view returns (ISaleForgeTypes.SaleInfo memory saleInfo);

    /// @notice Fallback function to accept ETH participation
    /// @dev Automatically forwards ETH to SaleForge via participateThroughProxy()
    /// @dev The participant is identified as msg.sender
    receive() external payable;
}
