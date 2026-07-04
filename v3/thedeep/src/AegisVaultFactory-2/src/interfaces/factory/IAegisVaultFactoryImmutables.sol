// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

/// @title Aegis Vault Factory Immutables
/// @notice Defines the immutable state variables for the Aegis Vault Factory
interface IAegisVaultFactoryImmutables {
    /// @notice The address of the ICHIVaultFactory contract
    function ichiVaultFactory() external view returns (address);

    /// @notice The name of the Automated Market Maker (AMM) used
    function ammName() external view returns (string memory);

    /// @notice The address of the Uniswap V3 Quoter contract
    function quoter() external view returns (IQuoter);

    /// @notice The address of the AegisVault implementation contract
    function aegisVaultImplementation() external view returns (address);

    /// @notice The address of the AegisVaultERC20 implementation contract
    function aegisVaultERC20Implementation() external view returns (address);
}
