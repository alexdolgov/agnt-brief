// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @title ITopazV2Vault
/// @notice Configuration getters the generic zapper reads to route for a vault.
/// @dev The ERC4626 share token is the vault address itself; `pool()` is the
///      underlying LP (== ERC4626 asset()).
interface ITopazV2Vault {
    function base() external view returns (address);

    function other() external view returns (address);

    function pool() external view returns (address);

    function router() external view returns (address);

    function poolFactory() external view returns (address);

    function stable() external view returns (bool);

    function wbnb() external view returns (address);
}
