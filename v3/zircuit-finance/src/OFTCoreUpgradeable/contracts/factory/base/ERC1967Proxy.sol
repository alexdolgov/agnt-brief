// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { Proxy } from "@openzeppelin/contracts/proxy/Proxy.sol";
import { ERC1967Utils } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";
import { Errors } from "../../common/Errors.sol";

/// @title ERC-1967 Proxy (constructor-less)
/// @dev
/// - Uses standard EIP-1967 storage slots via {ERC1967Utils}.
/// - The constructor does not set an implementation (slot remains zero).
/// - {initProxy} is intended to be called by a Factory **in the same transaction** that deploys this proxy
///   (deploy → immediately call `initProxy`) to avoid any chance of third-party initialization.
/// - This proxy has no admin/owner logic; after initialization, upgrade authority is expected to be enforced
///   by the implementation (e.g., UUPS with access control) if upgrades are supported.
contract ERC1967Proxy is Proxy {
    /// @notice Deploys the proxy with no implementation set.
    /// @dev Intentionally empty; leaves the EIP-1967 implementation slot unset (zero).
    constructor() payable {}

    /// @notice One-time initializer to set the implementation and optionally call it.
    /// @dev
    /// - Reverts with {Errors.AlreadyInitialized} if the implementation slot is non-zero.
    /// - Designed to be invoked by the Factory **within the same transaction** as deployment.
    /// - Writes the EIP-1967 implementation slot and delegatecalls `implementation` with `data` (if non-empty)
    ///   using {ERC1967Utils.upgradeToAndCall}.
    /// @param implementation Address of the logic contract to delegate to.
    /// @param data ABI-encoded calldata for an optional initialization delegatecall on the implementation.
    function initProxy(
        address implementation,
        bytes memory data
    ) external payable {
        if (_implementation() != address(0)) revert Errors.AlreadyInitialized();
        ERC1967Utils.upgradeToAndCall(implementation, data);
    }

    /// @notice Returns the current implementation (logic) address.
    /// @dev Reads the standard EIP-1967 implementation slot via {ERC1967Utils.getImplementation}.
    /// @return impl The address of the implementation contract.
    function _implementation()
        internal
        view
        virtual
        override
        returns (address impl)
    {
        return ERC1967Utils.getImplementation();
    }
}
