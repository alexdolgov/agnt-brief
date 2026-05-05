// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/Proxy.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Proxy.sol)

pragma solidity ^0.8.20;

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }
}

// ============================================================
// FILE: src/proxies/interfaces/IInverterBeacon_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity ^0.8.0;

// External Interfaces
import {IBeacon} from "@oz/proxy/beacon/IBeacon.sol";

interface IInverterBeacon_v1 is IBeacon {
    //--------------------------------------------------------------------------
    // Errors

    /// @notice Given implementation invalid.
    error InverterBeacon__InvalidImplementation();

    /// @notice Given implementation minor and patch version is not higher than previous minor version.
    error InverterBeacon__InvalidImplementationMinorOrPatchVersion();

    //--------------------------------------------------------------------------
    // Events

    /// @notice The {InverterBeacon_v1} was constructed.
    /// @param  majorVersion The majorVersion of the implementation contract.
    event Constructed(uint majorVersion);

    /// @notice The {InverterBeacon_v1} was upgraded to a new implementation address.
    /// @param  implementation The new implementation address.
    /// @param  newMinorVersion The new minor version of the implementation contract.
    /// @param  newPatchVersion The new patch version of the implementation contract.
    event Upgraded(
        address indexed implementation,
        uint newMinorVersion,
        uint newPatchVersion
    );

    /// @notice The {InverterBeacon_v1} shutdown was initiated.
    event ShutdownInitiated();

    /// @notice The {InverterBeacon_v1} shutdown was reversed.
    event ShutdownReversed();

    //--------------------------------------------------------------------------
    // Public View Functions

    /// @notice Returns the version of the linked implementation.
    /// @return Major version.
    /// @return Minor version.
    /// @return Patch version.
    function version() external view returns (uint, uint, uint);

    /// @notice Returns the {InverterReverter_v1} of the {InverterBeacon_v1}.
    /// @return ReverterAddress The address of the reverter contract.
    function getReverterAddress() external returns (address);

    /// @notice Returns the implementation address of the {InverterBeacon_v1}.
    /// @return ImplementationAddress The address of the implementation.
    function getImplementationAddress() external returns (address);

    /// @notice Returns wether the {InverterBeacon_v1} is in emergency mode or not.
    /// @return emergencyModeActive Is the beacon in emergency mode.
    function emergencyModeActive() external view returns (bool);

    //--------------------------------------------------------------------------
    // onlyOwner Mutating Functions

    /// @notice Upgrades the {InverterBeacon_v1} to a new implementation address.
    /// @dev	Only callable by owner.
    /// @dev	`overrideShutdown` Doesnt do anything if {InverterBeacon_v1} is not in emergency mode.
    /// @dev	Revert if new implementation invalid.
    /// @param  newImplementation The new implementation address.
    /// @param  newMinorVersion The new minor version of the implementation contract.
    /// @param  newPatchVersion The new patch version of the implementation contract.
    /// @param  overrideShutdown Flag to enable upgradeTo function to override the shutdown.
    function upgradeTo(
        address newImplementation,
        uint newMinorVersion,
        uint newPatchVersion,
        bool overrideShutdown
    ) external;

    //--------------------------------------------------------------------------
    // onlyOwner Intervention Mechanism

    /// @notice Shuts down the {InverterBeacon_v1} and stops the system.
    /// @dev	Only callable by owner.
    /// @dev	Changes the implementation address to address(0).
    function shutDownImplementation() external;

    /// @notice Restarts the {InverterBeacon_v1} and the system.
    /// @dev	Only callable by owner.
    /// @dev	Changes the implementation address from address(0) to the original implementation.
    function restartImplementation() external;
}

// ============================================================
// FILE: src/proxies/InverterBeaconProxy_v1.sol
// ============================================================

// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.23;

// Internal Interfaces
import {IInverterBeacon_v1} from "src/proxies/interfaces/IInverterBeacon_v1.sol";

// External Dependencies
import {Proxy} from "@oz/proxy/Proxy.sol";

/**
 * @title   Inverter Beacon Proxy
 *
 * @notice  Acts as a proxy for Inverter Network's smart contracts, allowing for upgrades
 *          to contract implementations without affecting the existing state or contract
 *          addresses, thereby achieving upgradeable contracts.
 *
 * @dev     Implements the Proxy pattern by referencing the {InverterBeacon_v1}, which holds
 *          the address of the current implementation to which calls are delegated.
 *
 * @custom:security-contact security@inverter.network
 *                          In case of any concerns or findings, please refer to our Security Policy
 *                          at security.inverter.network or email us directly!
 *
 * @author  Inverter Network
 */
contract InverterBeaconProxy_v1 is Proxy {
    //--------------------------------------------------------------------------
    // Events

    /// @notice Proxy upgraded to new {InverterBeacon_v1} instance.
    /// @param  beacon The new {InverterBeacon_v1} instance.
    event BeaconUpgraded(IInverterBeacon_v1 indexed beacon);

    //--------------------------------------------------------------------------
    // State

    /// @notice {InverterBeacon_v1} instance that points to the implementation.
    IInverterBeacon_v1 private immutable _beacon;

    //--------------------------------------------------------------------------
    // Constructor

    /// @notice Constructs the {InverterBeaconProxy_v1}.
    /// @dev	Sets the {InverterBeacon_v1} instance that contains the implementation address.
    /// @param  beacon The {InverterBeacon_v1} instance.
    constructor(IInverterBeacon_v1 beacon) {
        _beacon = beacon;
        emit BeaconUpgraded(beacon);
    }

    //--------------------------------------------------------------------------
    // Public Functions

    /// @dev	This overrides the possible use of a "version" function in the modules that are
    ///         called via the Proxy Beacon structure.
    /// @notice Returns the version of the linked implementation.
    /// @return Major version.
    /// @return Minor version.
    /// @return Patch version.
    function version() external view returns (uint, uint, uint) {
        return _beacon.version();
    }

    /// @dev    Fallback function to delegate calls to the implementation contract
    ///         even if the call data is empty but msg.value > 0.
    receive() external payable virtual {
        _fallback();
    }

    //--------------------------------------------------------------------------
    // Internal View Functions

    /// @inheritdoc Proxy
    function _implementation() internal view override returns (address) {
        return _beacon.implementation();
    }
}
